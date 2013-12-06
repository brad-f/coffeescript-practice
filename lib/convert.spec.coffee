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

  test(1, "One")
  test(2, "Two")
  test(3, "Three")
  test(4, "Four")
  test(5, "Five")
  test(6, "Six")
  test(7, "Seven")
  test(8, "Eight")
  test(9, "Nine")
  test(10, "Ten")  
  test(11, "Eleven")
  test(12, "Twelve")
  test(13, "Thirteen")
  test(14, "Fourteen")
  test(15, "Fifteen")
  test(16, "Sixteen")
  test(17, "Seventeen")
  test(18, "Eighteen")
  test(19, "Nineteen")
  
  test_case(20, "Twenty")
  test_case(30, "Thirty")
  test_case(40, "Forty")
  test_case(50, "Fifty")
  test_case(60, "Sixty")
  test_case(70, "Seventy")
  test_case(80, "Eighty")
  test_case(90, "Ninety")
  test_case(200, "Two hundred")
  test_case(3000, "Three thousand")
  test_case(30000, "Thirty thousand")
  test_case(300000, "Three hundred thousand")
  test_case(3000000, "Three million")
  test_case(3000000000, "Three billion")

  test(3245987.36, "Three million two hundred forty five thousand nine hundred eighty seven and 36/100") 
  test(-3245987.36, "Negative three million two hundred forty five thousand nine hundred eighty seven and 36/100") 
  test(0, "Zero")
  test(0.04, "04/100")
  test(0.00, "Zero")
  test(1.00, "One")
  test(0.99, "99/100")
