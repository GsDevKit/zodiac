instance creation
openConnectionToHost: hostIP port: portNumber timeout: timeout
  | platformSocket |
  platformSocket := GsSocket newTCP.
  ^ (self on: platformSocket)
    timeout: timeout;
    connectTo: hostIP port: portNumber;
    yourself