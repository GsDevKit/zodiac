private socket
socketSendData: bytes startingAt: offset count: count
  ^ self socket sendSomeData: bytes startIndex: offset count: count