*zodiac-gemstone-core
connectTo: hostAddress port: portNumber waitForConnectionFor: timeOutSeconds
  | theAddress |
  theAddress := hostAddress.
  (hostAddress isKindOf: ByteArray)
    ifTrue: [ 
      theAddress := ''.
      1 to: hostAddress size - 1 do: [ :index | theAddress := theAddress , (hostAddress at: index) printString , '.' ].
      theAddress := theAddress , (hostAddress at: hostAddress size) printString ].
  (self connectTo: portNumber on: theAddress timeoutMs: timeOutSeconds * 1000)
    ifFalse: [ 
      self close.
      self halt: 'Unable to connect to port ' , portNumber asString ]