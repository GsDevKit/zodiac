instance creation
openConnectionToHost: hostIP port: portNumber
  | platformSocket |
  platformSocket := GsSecureSocket newClient.
  ^ (self on: platformSocket)
    connectTo: hostIP port: portNumber;
    yourself