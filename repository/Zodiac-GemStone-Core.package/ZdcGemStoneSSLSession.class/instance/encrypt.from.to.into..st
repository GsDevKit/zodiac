operations
encrypt: srcBuf from: start to: stop into: ignored
  "Encrypt the input in srcBuf from start to stop into dstBuf."

  "Primitive. Encrypts the incoming buffer into the result buffer.
	Returns the number of bytes produced as a result"

  ^ self secureSocket writeFrom: srcBuf startingAt: start for: stop - start