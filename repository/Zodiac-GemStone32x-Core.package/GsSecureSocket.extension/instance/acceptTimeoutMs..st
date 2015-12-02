*zodiac-gemstone32x-core
acceptTimeoutMs: timeoutMs
  "patch for bug 45873"

  | newServer |
  newServer := super acceptTimeoutMs: timeoutMs.
  newServer ifNil: [ ^ nil ].	"Normal accept failed"
  newServer initializeAsServer.	"SSL init as a server socket"
  ^ newServer