ssl
connect
  "Do the SSL client handshake."

  | count |
  count := 0.
  connecting := true.
  self sslSession
    connect: in
    from: 1
    to: count
    into: out.
  connecting := false