basics = [
  '',
  'one',
  'two',
  'three',
  'four',
  'five',
  'six',
  'seven',
  'eight',
  'nine',
  'ten',
  'eleven',
  'twelve',
  'thirteen',
  'fourteen',
  'fifteen',
  'sixteen',
  'seventeen',
  'eighteen',
  'nineteen',
]

ONE_HUNDRED = 100
ONE_THOUSAND = ONE_HUNDRED * 10
ONE_MILLION = ONE_THOUSAND * ONE_THOUSAND
ONE_BILLION = ONE_MILLION * ONE_THOUSAND
ONE_TRILLION = ONE_BILLION * ONE_THOUSAND

convert = (num) ->
  if num < 20
    return basics[num]
  else if num < 30
    return ("twenty " + convert(num % 10)).trim()
  else if num < 40
    return ("thirty " + convert(num % 10)).trim()
  else if num < 50
    return ("forty " + convert(num % 10)).trim()
  else if num < 60
    return ("fifty " + convert(num % 10)).trim()
  else if num < 70
    return ("sixty " + convert(num % 10)).trim()
  else if num < 80
    return ("seventy " + convert(num % 10)).trim()
  else if num < 90
    return ("eighty " + convert(num % 10)).trim()
  else if num < ONE_HUNDRED
    return ("ninety " + convert(num % 10)).trim()
  else if num < ONE_THOUSAND
    hundreds = Math.floor(num / ONE_HUNDRED)
    rem = num % ONE_HUNDRED
    return (basics[hundreds] + " hundred " + convert(rem)).trim()
  else if num < ONE_MILLION
    thousands = Math.floor(num / ONE_THOUSAND)
    rem = num % ONE_THOUSAND
    return (convert(thousands) + " thousand " + convert(rem)).trim()
  else if num < ONE_BILLION
    millions = Math.floor(num / ONE_MILLION)
    rem = num % ONE_MILLION
    return (convert(millions) + " millions " + convert(rem)).trim()
  else if num < ONE_TRILLION
    billions = Math.floor(num / ONE_BILLION)
    rem = num % ONE_BILLION
    return (convert(billions) + " billions " + convert(rem)).trim()
    
   
exports.convert = convert
