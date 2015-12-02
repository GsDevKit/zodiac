instance creation
openConnectionToHost: hostIP port: portNumber
  | platformSocket |
  platformSocket := GsSocket newTCP.
  ^ (self on: platformSocket)
    connectTo: hostIP port: portNumber;
    yourself