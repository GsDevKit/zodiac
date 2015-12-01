private
serverSocketOn: port
  | socket |
  (socket := GsSecureSocket newServer)
    option: 'NODELAY' put: true;
    option: 'SNDBUF' put: self socketBufferSize;
    option: 'RCVBUF' put: self socketBufferSize.
  socket listenOn: port backlogSize: self listenBacklogSize.
  socket isValid
    ifFalse: [ self error: 'Cannot create socket on port ' , port printString ].
  ^ socket