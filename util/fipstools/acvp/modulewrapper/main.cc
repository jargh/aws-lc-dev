/* Copyright (c) 2021, Google Inc.
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
 * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
 * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
 * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE. */

#include <string.h>
#include <iostream>
#include <string>

#if defined(_MSC_VER)
#include <fcntl.h>
#include <io.h>
#include <stdio.h>
#endif
#include <openssl/crypto.h>
#include <openssl/span.h>

#ifndef OPENSSL_WINDOWS
#include <signal.h>
#endif
#include "modulewrapper.h"

int main(int argc, char **argv) {
  if (argc == 2 && strcmp(argv[1], "--version") == 0) {
    printf("Built for architecture: ");

#if defined(OPENSSL_X86_64)
    puts("x86-64 (64-bit)");
#elif defined(OPENSSL_ARM)
    puts("ARM (32-bit)");
#elif defined(OPENSSL_AARCH64)
    puts("aarch64 (64-bit)");
#elif defined(OPENSSL_PPC64LE)
    puts("PPC64LE (64-bit)");
#elif defined(OPENSSL_PPC32BE)
    puts("PPC32BE (32-bit)");
#elif defined(OPENSSL_PPC64BE)
    puts("PPC64BE (64-bit)");
#else
#error "FIPS build not supported on this architecture"
#endif

    printf("Hardware acceleration enabled: %s\n",
           CRYPTO_has_asm() ? "yes" : "no");

    return 0;
  } else if (argc == 2 && strcmp(argv[1], "--wait-for-debugger") == 0) {
#if defined(OPENSSL_WINDOWS)
    fprintf(stderr, "-wait-for-debugger is not supported on Windows.\n");
    return 1;
#else
    // The debugger will resume the process.
    raise(SIGSTOP);
#endif
  } else if (argc != 1) {
    fprintf(stderr, "Usage: %s [--version | --wait-for-debugger]\n", argv[0]);
    return 4;
  }

#if defined(_MSC_VER)
  if (_setmode(_fileno(stdin), _O_BINARY) < 0 ||
      _setmode(_fileno(stdout), _O_BINARY) < 0) {
    fprintf(stderr, "Setting binary mode to stdin/stdout failed.\n");
    return 4;
  }
#endif

  std::unique_ptr<bssl::acvp::RequestBuffer> buffer =
      bssl::acvp::RequestBuffer::New();
  const bssl::acvp::ReplyCallback write_reply = std::bind(
      bssl::acvp::WriteReplyToStream, &std::cout, std::placeholders::_1);

  for (;;) {
    const bssl::Span<const bssl::Span<const uint8_t>> args =
        ParseArgsFromStream(&std::cin, buffer.get());
    if (args.empty()) {
      return 1;
    }

    const bssl::acvp::Handler handler = bssl::acvp::FindHandler(args);
    if (!handler) {
      return 2;
    }

    if (!handler(args.subspan(1).data(), write_reply)) {
      const std::string name(reinterpret_cast<const char *>(args[0].data()),
                             args[0].size());
      fprintf(stderr, "\'%s\' operation failed.\n", name.c_str());
      return 3;
    }
  }
};
