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
  'nineteen'
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

evaluate = (numerator, denominator) ->
  quotient = Math.floor(numerator/denominator)
  remainder = numerator % denominator
  return [quotient, remainder]

evaluate_fraction = (num) ->
  return "#{Math.round(num*100)}/100"

_convert = (num) ->
  if num == 0
    return ""

  else if num < 1
    return "and #{evaluate_fraction num}".trim()  

  else if num < 20
    [q, r] = evaluate num, 1
    return "#{basics[q-1]} #{_convert r}".trim()

  else if num < ONE_HUNDRED
    [q, r] = evaluate num, 10
    return "#{special[q-2]} #{_convert r}".trim()

  else if num < ONE_THOUSAND
    [q, r] = evaluate num, ONE_HUNDRED
    return "#{_convert q} hundred #{_convert r}".trim()

  else if num < ONE_MILLION
    [q, r] = evaluate num, ONE_THOUSAND
    return "#{_convert q} thousand #{_convert r}".trim()

  else if num < ONE_BILLION
    [q, r] = evaluate num, ONE_MILLION
    return "#{_convert q} million #{_convert r}".trim()

  else if num < ONE_TRILLION
    [q, r] = evaluate num, ONE_TRILLION
    return "#{_convert q} billion #{_convert r}".trim()
    
exports.convert = (num) ->
  if num < 0
    return "negative #{_convert -num} dollars"
  else if num == 0
    return "zero dollars"
  else if num < 1
    return "#{evaluate_fraction num} dollars"
  else
    return "#{_convert num} dollars"
