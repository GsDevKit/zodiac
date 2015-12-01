*zodiac-gemstone-core
listenOn: port backlogSize: listenBacklogSize
  (self makeServer: listenBacklogSize atPort: port)
    ifNil: [ 
      | errStr |
      errStr := self lastErrorString.
      self close.
      self error: errStr ]