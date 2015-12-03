instance creation
openConnectionToHostNamed: hostName port: portNumber
  | platformSocket socketStream hostIP |
  platformSocket := self socketClass newTCP.
  socketStream := self on: platformSocket.
  hostIP := GsSocket getHostAddressByName: hostName.
  ^ socketStream
    connectTo: hostIP port: portNumber;
    yourself