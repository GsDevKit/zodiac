*zodiac-gemstone-core
initialize
  "self initialize"

  (GsSecureSocket
    useCACertificateFileForClients:
      '$GEMSTONE/examples/openssl/certs/serverCA.pem')
    ifFalse: [ self error: 'useCACertificateFileForClients failed' ].
  GsSecureSocket enableCertificateVerificationOnClient.
  (GsSecureSocket setClientCipherListFromString: 'ALL:!ADH:@STRENGTH')
    ifFalse: [ self error: 'setClientCipherListFromString: failed' ].
  (GsSecureSocket
    useServerCertificateFile: '$GEMSTONE/examples/openssl/certs/server.pem'
    withPrivateKeyFile: '$GEMSTONE/examples/openssl/certs/server.pem'
    privateKeyPassphrase: nil)
    ifFalse: [ self error: 'useServerCertificateFile failed.' ].
  GsSecureSocket disableCertificateVerificationOnServer.
  (GsSecureSocket setServerCipherListFromString: 'ALL:!ADH:@STRENGTH')
    ifFalse: [ self error: 'setServerCipherListFromString: failed' ]