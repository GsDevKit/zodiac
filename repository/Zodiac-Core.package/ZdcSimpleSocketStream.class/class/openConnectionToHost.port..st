instance creation
openConnectionToHost: hostIP port: portNumber
  | platformSocket |
  platformSocket := self socketClass newTCP.
  ^ (self on: platformSocket)
    connectTo: hostIP port: portNumber;
    yourself