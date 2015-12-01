instance creation
openConnectionToHost: hostIP port: portNumber timeout: timeout
  | platformSocket |
  platformSocket := GsSecureSocket newClient.
  ^ (self on: platformSocket)
    timeout: timeout;
    connectTo: hostIP port: portNumber;
    yourself