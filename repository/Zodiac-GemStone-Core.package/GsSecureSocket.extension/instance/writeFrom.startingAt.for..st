*zodiac-gemstone-core
writeFrom: aByteArray startingAt: startIndex for: length
  | result |
  result := self write: length from: aByteArray startingAt: startIndex.
  result isNil
    ifTrue: [ self error: self fetchLastIoErrorString ].
  ^ result