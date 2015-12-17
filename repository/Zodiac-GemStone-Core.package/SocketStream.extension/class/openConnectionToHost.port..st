*zodiac-gemstone-core
openConnectionToHost: hostAddress port: portNumber
  | theAddress |
  theAddress := hostAddress.
  (hostAddress isKindOf: ByteArray)
    ifTrue: [ 
      theAddress := ''.
      1 to: hostAddress size - 1 do: [ :index | theAddress := theAddress , (hostAddress at: index) printString , '.' ].
      theAddress := theAddress , (hostAddress at: hostAddress size) printString ].
  ^ self
    openConnectionToHost: theAddress
    port: portNumber
    timeout: SocketStreamSocket standardTimeout