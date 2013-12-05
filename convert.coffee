basics = [
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

special = [
  'twenty',
  'thirty',
  'forty',
  'fifty',
  'sixty',
  'seventy',
  'eighty',
  'ninety'
]

ONE_HUNDRED = 100
ONE_THOUSAND = ONE_HUNDRED * 10
ONE_MILLION = ONE_THOUSAND * ONE_THOUSAND
ONE_BILLION = ONE_MILLION * ONE_THOUSAND
ONE_TRILLION = ONE_BILLION * ONE_THOUSAND

recurse_if_necessary = (str, rem) ->
  return str if rem == 0
  return str + " " + convert(rem)

convert = (num) ->
  if num < 1
    return (num * 100) "/100"  
  else if num < 20
    rem = num % 1
    str = basics[num - 1]
    return recurse_if_necessary(str, rem)
  else if num < ONE_HUNDRED
    tens = Math.floor(num / 10)
    rem = num % 10
    str = special[tens - 2]
    return recurse_if_necessary(str, rem)
  else if num < ONE_THOUSAND
    hundreds = Math.floor(num / ONE_HUNDRED)
    rem = num % ONE_HUNDRED
    str = basics[hundreds - 1] + " hundred"
    return recurse_if_necessary(str, rem)
  else if num < ONE_MILLION
    thousands = Math.floor(num / ONE_THOUSAND)
    rem = num % ONE_THOUSAND
    str = convert(thousands) + " thousand"
    return recurse_if_necessary(str, rem)
  else if num < ONE_BILLION
    millions = Math.floor(num / ONE_MILLION)
    rem = num % ONE_MILLION
    str = convert(millions) + " million"
    return recurse_if_necessary(str, rem)
  else if num < ONE_TRILLION
    billions = Math.floor(num / ONE_BILLION)
    rem = num % ONE_BILLION
    str = convert(billions) + " billion"
    return recurse_if_necessary(str, rem)
    
exports.convert = convert
