operations
connect: srcBuf from: start to: stop into: dstBuf
  "Start or continue the client handshake using the given input token"

  "Starts or continues a client handshake using the provided data.
	Will eventually produce output to be sent to the server.
	Returns:
		> 0   Number of bytes to be sent to the server
		= 0   Success. The connection is established
		= -1  More input is required
		< -1  Other errors"

  self secureSocket secureConnect
    ifFalse: [ 
      | certError errorString |
      certError := GsSecureSocket fetchLastCertificateVerificationErrorForClient.
      errorString := self secureSocket fetchLastIoErrorString asString.
      [ 
      certError
        ifNil: [ self error: errorString ]
        ifNotNil: [ self error: 'Cert error: =>' , certError , ' : ' , errorString ] ]
        ensure: [ self destroy ] ].
  ^ 0