accessing
certNameForClient
  certificateName ifNil: [ ^ '$GEMSTONE/examples/openssl/certs/serverCA.pem' ].
  ^ certificateName