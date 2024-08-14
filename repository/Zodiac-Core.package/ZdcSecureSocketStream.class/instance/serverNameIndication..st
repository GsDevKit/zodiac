accessing
serverNameIndication: aDomainNameString
  "Set the Server Name Indication for the TLS connection.
  Note, this should be set before sending #connect.
  Note, some supported version of GemStone do not support
  SNI. As a result, it is only set in supported version."

  | sock |
  sock := self socket.
  (sock respondsTo: #setServerNameIndication:)
    ifTrue: [ sock setServerNameIndication: aDomainNameString ]
