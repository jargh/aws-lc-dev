#!/usr/bin/env bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0 OR ISC

set -ex

source tests/ci/common_posix_setup.sh

function static_linux_supported() {
  if [[ ("$(uname -s)" == 'Linux'*) && (("$(uname -p)" == 'x86_64'*) || ("$(uname -p)" == 'aarch64'*)) ]]; then
    return 0
  fi
  return 1
}

function static_openbsd_supported() {
  if [[ "$(uname -s)" == 'OpenBSD' && "$(uname -p)" == 'x86_64'* ]]; then
    return 0
  fi
  return 1
}

echo "Testing AWS-LC shared library in FIPS Release mode."
fips_build_and_test -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=1

echo "Testing AWS-LC shared library in FIPS Release mode with FIPS entropy source method CPU Jitter."
fips_build_and_test -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=1 -DENABLE_FIPS_ENTROPY_CPU_JITTER=ON

# Static FIPS build works only on Linux and OpenBSD platforms.
if static_linux_supported || static_openbsd_supported; then
  echo "Testing AWS-LC static library in FIPS Release mode."
  fips_build_and_test -DCMAKE_BUILD_TYPE=Release

  echo "Testing AWS-LC static breakable release build"
  run_build -DFIPS=1 -DCMAKE_C_FLAGS="-DBORINGSSL_FIPS_BREAK_TESTS"
  cd $SRC_ROOT
  MODULE_HASH=$(./util/fipstools/test-break-kat.sh |\
                    (egrep "Hash of module was:.* ([a-f0-9]*)" || true))

  echo "Testing AWS-LC static breakable release build while keeping local symbols"
  echo "to check that module hash didn't change."
  run_build -DFIPS=1 -DKEEP_ASM_LOCAL_SYMBOLS=1 -DCMAKE_C_FLAGS="-DBORINGSSL_FIPS_BREAK_TESTS"
  cd $SRC_ROOT
  ./util/fipstools/test-break-kat.sh || grep -i hash
  MODULE_HASH_LOCALSYMS=$(./util/fipstools/test-break-kat.sh |\
                              (egrep "Hash of module was:.* ([a-f0-9]*)" || true))
  if [ "$MODULE_HASH" == "$MODULE_HASH_LOCALSYMS" ]; then
    echo "Module hash didn't change"
  fi

  # These build parameters may be needed by our aws-lc-fips-sys Rust package
  run_build -DFIPS=1 -DBUILD_LIBSSL=OFF -DBUILD_TESTING=OFF

  echo "Testing AWS-LC static library in FIPS Release mode with FIPS entropy source method CPU Jitter."
  fips_build_and_test -DCMAKE_BUILD_TYPE=Release -DENABLE_FIPS_ENTROPY_CPU_JITTER=ON
fi

# The AL2 version of Clang does not have all of the required artifacts for address sanitizer, see P45594051
if [[ "${AWSLC_NO_ASM_FIPS}" == "1" ]]; then
  if [[ ("$(uname -p)" == 'x86_64'*) ]]; then
    echo "Building with Clang and testing AWS-LC in FIPS Release mode with address sanitizer."
    fips_build_and_test -DASAN=1 -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=1
  else
    # See the comment in run_posix_santizers.sh for more context. ASAN on Arm has a huge performance impact on ssl_test
    # which causes it to take over 2 hours to complete.
    echo "Building with Clang and testing AWS-LC in FIPS Release mode with address sanitizer only running crypto_test"
    run_build -DFIPS=1 -DASAN=1 -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=1
    go run util/all_tests.go -build-dir "$BUILD_ROOT"
  fi
fi

echo "Testing shared AWS-LC in FIPS Debug mode in a different folder."
BUILD_ROOT=$(mktemp -d)
fips_build_and_test -DCMAKE_BUILD_TYPE=Debug -DBUILD_SHARED_LIBS=1
