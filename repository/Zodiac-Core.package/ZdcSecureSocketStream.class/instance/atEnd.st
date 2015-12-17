testing
atEnd
  "I am atEnd when there is no more data to be read and there never will be.
	This means that readBuffer must be empty, there must be no more unread data 
	available at the socket, and the socket must be closed"

  readBuffer isEmpty
    ifFalse: [ ^ false ].
  socket notNil
    ifTrue: [ 
      | readCount |
      readCount := self fillReadBufferNoWait.
      readCount = 0
        ifTrue: [ ^ true ].
      readBuffer isEmpty
        ifFalse: [ ^ false ] ].
  ^ self isConnected not