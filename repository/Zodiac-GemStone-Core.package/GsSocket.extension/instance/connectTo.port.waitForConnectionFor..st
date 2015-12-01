*zodiac-gemstone-core
connectTo: hostAddress port: portNumber waitForConnectionFor: timeOutSeconds
  (self connectTo: portNumber on: hostAddress timeoutMs: timeOutSeconds * 1000)
    ifFalse: [ 
      self close.
      self
        halt:
          'Unable to connect to port ' , portNumber asString
            ,
              '. Wait 30 seconds or so, then ensure serverExample is started first.' ]