private socket
socketReceiveDataInto: bytes startingAt: offset count: count
  ^ self socket read: count into: bytes startingAt: offset