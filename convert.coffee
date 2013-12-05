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
  else if num < 100
    return ("ninety " + convert(num % 10)).trim()

exports.convert = convert
