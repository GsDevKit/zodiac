operations
decrypt: srcBuf from: start to: stop into: dstBuf
  "Decrypt the input in srcBuf from start to stop into dstBuf."

  "Primitive. Takes incoming data for decryption and continues to decrypt data.
	Returns the number of bytes produced in the output"

  ^ self secureSocket read: dstBuf size into: dstBuf startingAt: start