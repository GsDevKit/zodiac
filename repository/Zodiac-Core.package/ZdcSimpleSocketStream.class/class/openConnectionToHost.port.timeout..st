instance creation
openConnectionToHost: hostIP port: portNumber timeout: timeout
  | platformSocket |
  platformSocket := self socketClass newTCP.
  ^ (self on: platformSocket)
    timeout: timeout;
    connectTo: hostIP port: portNumber;
    yourself