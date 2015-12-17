initialize
destroy
  "Do any necessary cleanup when I am no longer needed"

  secureSocket ifNil: [ ^ self ].
  secureSocket close.
  secureSocket := nil