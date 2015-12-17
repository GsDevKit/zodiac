testing
testReverseEcho10kSearch
  | dataSent dataRead clientStream semaphore |
  semaphore := self
    runServer: [ :serverSocket | 
      | clientSocket stream data |
      clientSocket := serverSocket waitForAcceptFor: 10.
      stream := self socketStreamOn: clientSocket.
      data := stream upTo: 0.
      stream
        nextPutAll: data reverse;
        nextPut: 0.
      stream close ].
  dataSent := self bytes: 10000.
  1 to: dataSent size do: [ :index | dataSent at: index put: ((dataSent at: index) max: 1) ].
  clientStream := self openConnectionToHostNamed: 'localhost' port: self port.
  clientStream
    nextPutAll: dataSent;
    nextPut: 0;
    flush.
  dataRead := clientStream upTo: 0.
  clientStream close.
  self assert: dataRead = dataSent reverse.
  semaphore wait