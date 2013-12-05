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

convert = (num) ->
  if num < 20
    return basics[num-1]
  else if num < 30
    return "twenty " + convert(num % 10)

exports.convert = convert
