convert = require('./convert').convert

describe 'Convert', ->
  
  test = (num, str) ->  
    it 'will return ' + str, ->
      result = convert(num)
      expect(result).toBe str

  test(1, "one")
  test(2, "two")
  test(3, "three")
  test(4, "four")
  test(5, "five")
  test(6, "six")
  test(7, "seven")
  test(8, "eight")
  test(9, "nine")
  test(10, "ten")
  test(11, "eleven")
  test(12, "twelve")
  test(13, "thirteen")
  test(14, "fourteen")
  test(15, "fifteen")
  test(16, "sixteen")
  test(17, "seventeen")
  test(18, "eighteen")
  test(19, "nineteen")
  test(20, "twenty")
  test(21, "twenty one")
  test(22, "twenty two")
  test(23, "twenty three")
  test(24, "twenty four")
