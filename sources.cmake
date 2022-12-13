# This file contains source lists that are also consumed by
# generate_build_files.py.
#
# TODO(davidben): Move the other source lists into this file.

set(
  CRYPTO_TEST_DATA

  crypto/blake2/blake2b256_tests.txt
  crypto/cipher_extra/test/aes_128_cbc_sha1_tls_implicit_iv_tests.txt
  crypto/cipher_extra/test/aes_128_cbc_sha1_tls_tests.txt
  crypto/cipher_extra/test/aes_128_cbc_sha1_tls_stitch_tests.txt
  crypto/cipher_extra/test/aes_128_cbc_sha1_tls_stitch_implicit_iv_tests.txt
  crypto/cipher_extra/test/aes_128_cbc_sha256_tls_stitch_tests.txt
  crypto/cipher_extra/test/aes_128_cbc_sha256_tls_stitch_implicit_iv_tests.txt
  crypto/cipher_extra/test/aes_256_cbc_sha1_tls_stitch_tests.txt
  crypto/cipher_extra/test/aes_256_cbc_sha1_tls_stitch_implicit_iv_tests.txt
  crypto/cipher_extra/test/aes_256_cbc_sha256_tls_stitch_tests.txt
  crypto/cipher_extra/test/aes_256_cbc_sha256_tls_stitch_implicit_iv_tests.txt
  crypto/cipher_extra/test/aes_128_cbc_sha256_tls_implicit_iv_tests.txt
  crypto/cipher_extra/test/aes_128_cbc_sha256_tls_tests.txt
  crypto/cipher_extra/test/aes_128_ccm_bluetooth_tests.txt
  crypto/cipher_extra/test/aes_128_ccm_bluetooth_8_tests.txt
  crypto/cipher_extra/test/aes_128_ccm_matter_tests.txt
  crypto/cipher_extra/test/aes_128_ctr_hmac_sha256.txt
  crypto/cipher_extra/test/aes_128_gcm_randnonce_tests.txt
  crypto/cipher_extra/test/aes_128_gcm_siv_tests.txt
  crypto/cipher_extra/test/aes_128_gcm_tests.txt
  crypto/cipher_extra/test/aes_192_gcm_tests.txt
  crypto/cipher_extra/test/aes_256_cbc_sha1_tls_implicit_iv_tests.txt
  crypto/cipher_extra/test/aes_256_cbc_sha1_tls_tests.txt
  crypto/cipher_extra/test/aes_256_ctr_hmac_sha256.txt
  crypto/cipher_extra/test/aes_256_gcm_randnonce_tests.txt
  crypto/cipher_extra/test/aes_256_gcm_siv_tests.txt
  crypto/cipher_extra/test/aes_256_gcm_tests.txt
  crypto/cipher_extra/test/chacha20_poly1305_tests.txt
  crypto/cipher_extra/test/xchacha20_poly1305_tests.txt
  crypto/cipher_extra/test/cipher_tests.txt
  crypto/cipher_extra/test/des_ede3_cbc_sha1_tls_implicit_iv_tests.txt
  crypto/cipher_extra/test/des_ede3_cbc_sha1_tls_tests.txt
  crypto/cipher_extra/test/nist_cavp/aes_128_cbc.txt
  crypto/cipher_extra/test/nist_cavp/aes_128_ctr.txt
  crypto/cipher_extra/test/nist_cavp/aes_128_gcm.txt
  crypto/cipher_extra/test/nist_cavp/aes_192_cbc.txt
  crypto/cipher_extra/test/nist_cavp/aes_192_ctr.txt
  crypto/cipher_extra/test/nist_cavp/aes_256_cbc.txt
  crypto/cipher_extra/test/nist_cavp/aes_256_ctr.txt
  crypto/cipher_extra/test/nist_cavp/aes_256_gcm.txt
  crypto/cipher_extra/test/nist_cavp/tdes_cbc.txt
  crypto/cipher_extra/test/nist_cavp/tdes_ecb.txt
  crypto/curve25519/ed25519_tests.txt
  crypto/ecdh_extra/ecdh_tests.txt
  crypto/evp_extra/evp_tests.txt
  crypto/evp_extra/pq_kem_kat_tests_kyber512.txt
  crypto/evp_extra/scrypt_tests.txt
  crypto/fipsmodule/aes/aes_tests.txt
  crypto/fipsmodule/bn/test/exp_tests.txt
  crypto/fipsmodule/bn/test/gcd_tests.txt
  crypto/fipsmodule/bn/test/miller_rabin_tests.txt
  crypto/fipsmodule/bn/test/mod_exp_tests.txt
  crypto/fipsmodule/bn/test/mod_inv_tests.txt
  crypto/fipsmodule/bn/test/mod_mul_tests.txt
  crypto/fipsmodule/bn/test/mod_sqrt_tests.txt
  crypto/fipsmodule/bn/test/product_tests.txt
  crypto/fipsmodule/bn/test/quotient_tests.txt
  crypto/fipsmodule/bn/test/shift_tests.txt
  crypto/fipsmodule/bn/test/sum_tests.txt
  crypto/fipsmodule/cmac/cavp_3des_cmac_tests.txt
  crypto/fipsmodule/cmac/cavp_aes128_cmac_tests.txt
  crypto/fipsmodule/cmac/cavp_aes192_cmac_tests.txt
  crypto/fipsmodule/cmac/cavp_aes256_cmac_tests.txt
  crypto/fipsmodule/ec/ec_scalar_base_mult_tests.txt
  crypto/fipsmodule/ec/large_x_coordinate_points.txt
  crypto/fipsmodule/ec/p256-nistz_tests.txt
  crypto/fipsmodule/ecdsa/ecdsa_sign_tests.txt
  crypto/fipsmodule/ecdsa/ecdsa_verify_tests.txt
  crypto/fipsmodule/modes/gcm_tests.txt
  crypto/fipsmodule/rand/ctrdrbg_vectors.txt
  crypto/fipsmodule/sha/testvectors/SHAKE128VariableOut.txt
  crypto/fipsmodule/sha/testvectors/SHAKE256VariableOut.txt
  crypto/fipsmodule/sha/testvectors/SHA3_224ShortMsg.txt
  crypto/fipsmodule/sha/testvectors/SHA3_256ShortMsg.txt
  crypto/fipsmodule/sha/testvectors/SHA3_384ShortMsg.txt
  crypto/fipsmodule/sha/testvectors/SHA3_512ShortMsg.txt
  crypto/hmac_extra/hmac_tests.txt
  crypto/hpke/hpke_test_vectors.txt
  crypto/ocsp/test/aws/ocsp_response.der
  crypto/ocsp/test/aws/ocsp_response_ca_signed.der
  crypto/ocsp/test/aws/ocsp_response_revoked.der
  crypto/ocsp/test/aws/ocsp_response_unknown.der
  crypto/ocsp/test/aws/ocsp_response_wrong_signer.der
  crypto/ocsp/test/aws/ocsp_response_sha256.der
  crypto/ocsp/test/aws/ocsp_response_revoked_sha256.der
  crypto/ocsp/test/aws/ocsp_response_unknown_sha256.der
  crypto/ocsp/test/aws/ocsp_response_wrong_signer_sha256.der
  crypto/ocsp/test/aws/ocsp_response_malformedrequest.der
  crypto/ocsp/test/aws/ocsp_response_internalerror.der
  crypto/ocsp/test/aws/ocsp_response_trylater.der
  crypto/ocsp/test/aws/ocsp_response_sigrequired.der
  crypto/ocsp/test/aws/ocsp_response_unauthorized.der
  crypto/ocsp/test/aws/ca_cert.pem
  crypto/ocsp/test/aws/server_cert.pem
  crypto/ocsp/test/aws/server_ecdsa_cert.pem
  crypto/ocsp/test/ND1.ors
  crypto/ocsp/test/ND2.ors
  crypto/ocsp/test/ND3.ors
  crypto/ocsp/test/ISOP_ND1.ors
  crypto/ocsp/test/ISOP_ND2.ors
  crypto/ocsp/test/ISOP_ND3.ors
  crypto/ocsp/test/WRID_ND1.ors
  crypto/ocsp/test/WRID_ND2.ors
  crypto/ocsp/test/WRID_ND3.ors
  crypto/ocsp/test/WINH_ND1.ors
  crypto/ocsp/test/WINH_ND2.ors
  crypto/ocsp/test/WINH_ND3.ors
  crypto/ocsp/test/WIKH_ND1.ors
  crypto/ocsp/test/WIKH_ND2.ors
  crypto/ocsp/test/WIKH_ND3.ors
  crypto/ocsp/test/D1.ors
  crypto/ocsp/test/D2.ors
  crypto/ocsp/test/D3.ors
  crypto/ocsp/test/ISOP_D1.ors
  crypto/ocsp/test/ISOP_D2.ors
  crypto/ocsp/test/ISOP_D3.ors
  crypto/ocsp/test/WRID_D1.ors
  crypto/ocsp/test/WRID_D2.ors
  crypto/ocsp/test/WRID_D3.ors
  crypto/ocsp/test/WINH_D1.ors
  crypto/ocsp/test/WINH_D2.ors
  crypto/ocsp/test/WINH_D3.ors
  crypto/ocsp/test/WIKH_D1.ors
  crypto/ocsp/test/WIKH_D2.ors
  crypto/ocsp/test/WIKH_D3.ors
  crypto/ocsp/test/WKDOSC_D1.ors
  crypto/ocsp/test/WKDOSC_D2.ors
  crypto/ocsp/test/WKDOSC_D3.ors
  crypto/ocsp/test/ISDOSC_D1.ors
  crypto/ocsp/test/ISDOSC_D2.ors
  crypto/ocsp/test/ISDOSC_D3.ors
  crypto/ocsp/test/ND1_Cross_Root.pem
  crypto/ocsp/test/ND1_Issuer_ICA.pem
  crypto/ocsp/test/ND1_Issuer_ICA-Cross.pem
  crypto/ocsp/test/ND2_Issuer_Root.pem
  crypto/ocsp/test/ND3_Issuer_Root.pem
  crypto/ocsp/test/WKIC_ND1_Issuer_ICA.pem
  crypto/ocsp/test/WKIC_ND2_Issuer_Root.pem
  crypto/ocsp/test/WKIC_ND3_Issuer_Root.pem
  crypto/ocsp/test/WSNIC_ND1_Issuer_ICA.pem
  crypto/ocsp/test/WSNIC_ND2_Issuer_Root.pem
  crypto/ocsp/test/WSNIC_ND3_Issuer_Root.pem
  crypto/ocsp/test/ISIC_ND1_Issuer_ICA.pem
  crypto/ocsp/test/ISIC_ND2_Issuer_Root.pem
  crypto/ocsp/test/ISIC_ND3_Issuer_Root.pem
  crypto/ocsp/test/D1_Issuer_ICA.pem
  crypto/ocsp/test/D2_Issuer_Root.pem
  crypto/ocsp/test/D3_Issuer_Root.pem
  crypto/ocsp/test/WKIC_D1_Issuer_ICA.pem
  crypto/ocsp/test/WKIC_D2_Issuer_Root.pem
  crypto/ocsp/test/WKIC_D3_Issuer_Root.pem
  crypto/ocsp/test/WSNIC_D1_Issuer_ICA.pem
  crypto/ocsp/test/WSNIC_D2_Issuer_Root.pem
  crypto/ocsp/test/WSNIC_D3_Issuer_Root.pem
  crypto/ocsp/test/ISIC_D1_Issuer_ICA.pem
  crypto/ocsp/test/ISIC_D2_Issuer_Root.pem
  crypto/ocsp/test/ISIC_D3_Issuer_Root.pem
  crypto/pkcs8/test/empty_password.p12
  crypto/pkcs8/test/no_encryption.p12
  crypto/pkcs8/test/nss.p12
  crypto/pkcs8/test/null_password.p12
  crypto/pkcs8/test/openssl.p12
  crypto/pkcs8/test/pbes2_sha1.p12
  crypto/pkcs8/test/pbes2_sha256.p12
  crypto/pkcs8/test/unicode_password.p12
  crypto/pkcs8/test/windows.p12
  crypto/poly1305/poly1305_tests.txt
  crypto/siphash/siphash_tests.txt
  crypto/x509/test/basic_constraints_ca.pem
  crypto/x509/test/basic_constraints_ca_pathlen_0.pem
  crypto/x509/test/basic_constraints_ca_pathlen_1.pem
  crypto/x509/test/basic_constraints_ca_pathlen_10.pem
  crypto/x509/test/basic_constraints_leaf.pem
  crypto/x509/test/basic_constraints_none.pem
  crypto/x509/test/invalid_extension_intermediate.pem
  crypto/x509/test/invalid_extension_intermediate_authority_key_identifier.pem
  crypto/x509/test/invalid_extension_intermediate_basic_constraints.pem
  crypto/x509/test/invalid_extension_intermediate_ext_key_usage.pem
  crypto/x509/test/invalid_extension_intermediate_key_usage.pem
  crypto/x509/test/invalid_extension_intermediate_name_constraints.pem
  crypto/x509/test/invalid_extension_intermediate_subject_alt_name.pem
  crypto/x509/test/invalid_extension_intermediate_subject_key_identifier.pem
  crypto/x509/test/invalid_extension_leaf.pem
  crypto/x509/test/invalid_extension_leaf_authority_key_identifier.pem
  crypto/x509/test/invalid_extension_leaf_basic_constraints.pem
  crypto/x509/test/invalid_extension_leaf_ext_key_usage.pem
  crypto/x509/test/invalid_extension_leaf_key_usage.pem
  crypto/x509/test/invalid_extension_leaf_name_constraints.pem
  crypto/x509/test/invalid_extension_leaf_subject_alt_name.pem
  crypto/x509/test/invalid_extension_leaf_subject_key_identifier.pem
  crypto/x509/test/invalid_extension_root.pem
  crypto/x509/test/invalid_extension_root_authority_key_identifier.pem
  crypto/x509/test/invalid_extension_root_basic_constraints.pem
  crypto/x509/test/invalid_extension_root_ext_key_usage.pem
  crypto/x509/test/invalid_extension_root_key_usage.pem
  crypto/x509/test/invalid_extension_root_name_constraints.pem
  crypto/x509/test/invalid_extension_root_subject_alt_name.pem
  crypto/x509/test/invalid_extension_root_subject_key_identifier.pem
  crypto/x509/test/many_constraints.pem
  crypto/x509/test/many_names1.pem
  crypto/x509/test/many_names2.pem
  crypto/x509/test/many_names3.pem
  crypto/x509/test/policy_root.pem
  crypto/x509/test/policy_intermediate_invalid.pem
  crypto/x509/test/policy_intermediate.pem
  crypto/x509/test/policy_leaf_invalid.pem
  crypto/x509/test/policy_leaf.pem
  crypto/x509/test/some_names1.pem
  crypto/x509/test/some_names2.pem
  crypto/x509/test/some_names3.pem
  crypto/x509/test/trailing_data_leaf_authority_key_identifier.pem
  crypto/x509/test/trailing_data_leaf_basic_constraints.pem
  crypto/x509/test/trailing_data_leaf_ext_key_usage.pem
  crypto/x509/test/trailing_data_leaf_key_usage.pem
  crypto/x509/test/trailing_data_leaf_name_constraints.pem
  crypto/x509/test/trailing_data_leaf_subject_alt_name.pem
  crypto/x509/test/trailing_data_leaf_subject_key_identifier.pem
  third_party/wycheproof_testvectors/aes_cbc_pkcs5_test.txt
  third_party/wycheproof_testvectors/aes_cmac_test.txt
  third_party/wycheproof_testvectors/aes_gcm_siv_test.txt
  third_party/wycheproof_testvectors/aes_gcm_test.txt
  third_party/wycheproof_testvectors/chacha20_poly1305_test.txt
  third_party/wycheproof_testvectors/dsa_test.txt
  third_party/wycheproof_testvectors/ecdh_secp224r1_test.txt
  third_party/wycheproof_testvectors/ecdh_secp256r1_test.txt
  third_party/wycheproof_testvectors/ecdh_secp384r1_test.txt
  third_party/wycheproof_testvectors/ecdh_secp521r1_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp224r1_sha224_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp224r1_sha256_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp224r1_sha512_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp256r1_sha256_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp256r1_sha512_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp384r1_sha384_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp384r1_sha512_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp521r1_sha512_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp256k1_sha256_test.txt
  third_party/wycheproof_testvectors/ecdsa_secp256k1_sha512_test.txt
  third_party/wycheproof_testvectors/eddsa_test.txt
  third_party/wycheproof_testvectors/hkdf_sha1_test.txt
  third_party/wycheproof_testvectors/hkdf_sha256_test.txt
  third_party/wycheproof_testvectors/hkdf_sha384_test.txt
  third_party/wycheproof_testvectors/hkdf_sha512_test.txt
  third_party/wycheproof_testvectors/hmac_sha1_test.txt
  third_party/wycheproof_testvectors/hmac_sha224_test.txt
  third_party/wycheproof_testvectors/hmac_sha256_test.txt
  third_party/wycheproof_testvectors/hmac_sha384_test.txt
  third_party/wycheproof_testvectors/hmac_sha512_test.txt
  third_party/wycheproof_testvectors/kwp_test.txt
  third_party/wycheproof_testvectors/kw_test.txt
  third_party/wycheproof_testvectors/primality_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha1_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha224_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha224_mgf1sha224_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha256_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha256_mgf1sha256_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha384_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha384_mgf1sha384_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha512_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_2048_sha512_mgf1sha512_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_3072_sha256_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_3072_sha256_mgf1sha256_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_3072_sha512_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_3072_sha512_mgf1sha512_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_4096_sha256_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_4096_sha256_mgf1sha256_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_4096_sha512_mgf1sha1_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_4096_sha512_mgf1sha512_test.txt
  third_party/wycheproof_testvectors/rsa_oaep_misc_test.txt
  third_party/wycheproof_testvectors/rsa_pkcs1_2048_test.txt
  third_party/wycheproof_testvectors/rsa_pkcs1_3072_test.txt
  third_party/wycheproof_testvectors/rsa_pkcs1_4096_test.txt
  third_party/wycheproof_testvectors/rsa_pss_2048_sha1_mgf1_20_test.txt
  third_party/wycheproof_testvectors/rsa_pss_2048_sha256_mgf1_0_test.txt
  third_party/wycheproof_testvectors/rsa_pss_2048_sha256_mgf1_32_test.txt
  third_party/wycheproof_testvectors/rsa_pss_3072_sha256_mgf1_32_test.txt
  third_party/wycheproof_testvectors/rsa_pss_4096_sha256_mgf1_32_test.txt
  third_party/wycheproof_testvectors/rsa_pss_4096_sha512_mgf1_32_test.txt
  third_party/wycheproof_testvectors/rsa_pss_misc_test.txt
  third_party/wycheproof_testvectors/rsa_sig_gen_misc_test.txt
  third_party/wycheproof_testvectors/rsa_signature_2048_sha224_test.txt
  third_party/wycheproof_testvectors/rsa_signature_2048_sha256_test.txt
  third_party/wycheproof_testvectors/rsa_signature_2048_sha384_test.txt
  third_party/wycheproof_testvectors/rsa_signature_2048_sha512_test.txt
  third_party/wycheproof_testvectors/rsa_signature_3072_sha256_test.txt
  third_party/wycheproof_testvectors/rsa_signature_3072_sha384_test.txt
  third_party/wycheproof_testvectors/rsa_signature_3072_sha512_test.txt
  third_party/wycheproof_testvectors/rsa_signature_4096_sha384_test.txt
  third_party/wycheproof_testvectors/rsa_signature_4096_sha512_test.txt
  third_party/wycheproof_testvectors/rsa_signature_test.txt
  third_party/wycheproof_testvectors/x25519_test.txt
  third_party/wycheproof_testvectors/xchacha20_poly1305_test.txt
)
