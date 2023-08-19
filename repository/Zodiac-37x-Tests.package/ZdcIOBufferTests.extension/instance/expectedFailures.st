*zodiac-37x-tests
expectedFailures
  "see https://github.com/GsDevKit/zodiac/issues/11"

  ^ super expectedFailures , #(#'testBivalentReading' #'testBivalentWriting')