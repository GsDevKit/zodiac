operations
connect: srcBuf from: start to: stop into: dstBuf
  "Start or continue the client handshake using the given input token"

  "Starts or continues a client handshake using the provided data.
	Will eventually produce output to be sent to the server"

  self secureSocket secureConnect
    ifFalse: [ 
      | certError errorString |
      certError := GsSecureSocket fetchLastCertificateVerificationErrorForClient.
      errorString := self secureSocket lastErrorString asString.
      [ 
      certError
        ifNil: [ self error: errorString ]
        ifNotNil: [ self error: 'Cert error: =>' , certError , ' : ' , errorString ] ]
        ensure: [ self destroy ] ].
  ^ 0