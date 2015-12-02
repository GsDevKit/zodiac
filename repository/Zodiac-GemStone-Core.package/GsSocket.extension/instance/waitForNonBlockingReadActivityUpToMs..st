*zodiac-gemstone-core
waitForNonBlockingReadActivityUpToMs: aNumberOfMilliseconds
  | ans |
  (ans := self readWillNotBlockWithin: aNumberOfMilliseconds) == nil
    ifTrue: [ ^ true ].
  ^ ans