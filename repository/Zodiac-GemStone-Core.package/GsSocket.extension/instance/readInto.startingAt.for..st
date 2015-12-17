*zodiac-gemstone-core
readInto: aByteArray startingAt: startIndex for: aNumberOfBytes
  | result |
  result := self read: aNumberOfBytes into: aByteArray startingAt: startIndex.
  result isNil
    ifTrue: [ SocketError signal: 'Unexpected and unknown socket error occured.' ].
  ^ result