initialize
destroy
  "Do any necessary cleanup when I am no longer needed"

  secureSocket ifNil: [  ].
  secureSocket close.
  secureSocket := nil