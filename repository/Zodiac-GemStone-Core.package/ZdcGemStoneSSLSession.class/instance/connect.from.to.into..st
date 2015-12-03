operations
connect: srcBuf from: start to: stop into: dstBuf
  "Start or continue the client handshake using the given input token"

  self secureSocket secureConnect
    ifFalse: [ 
      | certError errorString |
      certError := GsSecureSocket fetchLastCertificateVerificationErrorForClient.
      errorString := self secureSocket fetchLastIoErrorString asString.
      [ 
      certError
        ifNil: [ self error: errorString ]
        ifNotNil: [ self error: 'Cert error: =>' , certError , ' : ' , errorString ] ]
        ensure: [ self destroy ] ]