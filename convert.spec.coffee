convert = require('./convert').convert

describe 'Convert', ->
  
  test = (num, str) ->  
    it 'will return ' + str, ->
      result = convert(num)
      expect(result).toBe(str + " dollars")

  test_case = (num, str) ->
    test(num, str)
    test(num + 1, str + " one")
    test(num + 2, str + " two")
    test(num + 3, str + " three")
    test(num + 4, str + " four")
    test(num + 5, str + " five")
    test(num + 6, str + " six")
    test(num + 7, str + " seven")
    test(num + 8, str + " eight")
    test(num + 9, str + " nine")

  test(0.04, "04/100")  

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
  
  test_case(20, "twenty")
  test_case(30, "thirty")
  test_case(40, "forty")
  test_case(50, "fifty")
  test_case(60, "sixty")
  test_case(70, "seventy")
  test_case(80, "eighty")
  test_case(90, "ninety")
  test_case(200, "two hundred")
  test_case(3000, "three thousand")
  test_case(30000, "thirty thousand")
  test_case(300000, "three hundred thousand")
  test_case(3000000, "three million")
  #test_case(300000000, "three billion")

  test(3245987.36, "three million two hundred forty five thousand nine hundred eighty seven and 36/100") 
  test(-3245987.36, "negative three million two hundred forty five thousand nine hundred eighty seven and 36/100") 
  test(0, "zero")
