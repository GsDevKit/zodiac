*zodiac-gemstone-core
waitForConnectionFor: timeoutSeconds ifTimedOut: timeoutBlock
  "Wait up until the given deadline for a connection to be established. Return true if it is established by the deadline, false if not."

  | aSocket |
  [ self readWillNotBlockWithin: 5000 ]
    whileFalse: [ 
      "wait for a connection"
       ].
  aSocket := super waitForConnectionFor: timeoutSeconds ifTimedOut: timeoutBlock.
  aSocket secureAccept
    ifFalse: [ 
      | certError errorString |
      certError := aSocket class fetchLastCertificateVerificationErrorForServer.
      errorString := aSocket fetchLastIoErrorString asString.
      [ 
      certError
        ifNil: [ self error: 'accept error: ' , errorString ]
        ifNotNil: [ self error: 'Cert error: =>' , certError , ' : ' , errorString ] ]
        ensure: [ aSocket close ] ].
  ^ aSocket