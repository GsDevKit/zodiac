*zodiac-gemstone-core
connectTo: hostAddress port: portNumber waitForConnectionFor: timeOutSeconds
  super
    connectTo: hostAddress
    port: portNumber
    waitForConnectionFor: timeOutSeconds.
  self secureConnect
    ifFalse: [ 
      | certError errorString |
      certError := GsSecureSocket fetchLastCertificateVerificationErrorForClient.
      errorString := self fetchLastIoErrorString asString.
      self close.
      certError
        ifNil: [ self error: errorString ]
        ifNotNil: [ self error: 'Cert error: =>' , certError , ' : ' , errorString ] ]