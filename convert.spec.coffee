convert = require('./convert').convert

describe 'Convert', ->
  
  test = (num, str) ->  
    it 'will return ' + str, ->
      result = convert(num)
      expect(result).toBe(str + " dollars")

  adv_test = (num, str) ->
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

  test(0.04, "4/100")  

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
  
  adv_test(20, "twenty")
  adv_test(30, "thirty")
  adv_test(40, "forty")
  adv_test(50, "fifty")
  adv_test(60, "sixty")
  adv_test(70, "seventy")
  adv_test(80, "eighty")
  adv_test(90, "ninety")

  adv_test(200, "two hundred")
  adv_test(3000, "three thousand")
  adv_test(30000, "thirty thousand")
  adv_test(300000, "three hundred thousand")
  adv_test(3000000, "three million")

