*zodiac-gemstone-core
waitForConnectionFor: timeoutSeconds ifTimedOut: timeoutBlock
  "Wait up until the given deadline for a connection to be established. Return true if it is established by the deadline, false if not."

  | aSocket |
  aSocket := self acceptTimeoutMs: timeoutSeconds * 1000.
  aSocket
    ifNil: [ 
      self close.
      self error: 'accept error: ' , self lastErrorString ].
  ^ aSocket