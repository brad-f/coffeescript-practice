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

_evaluate = (numerator, denominator) ->
  quotient = Math.floor(numerator/denominator)
  remainder = numerator % denominator
  return [quotient, remainder]

_evaluate_fraction = (num) ->
  return "#{_padleft(Math.round(num*100))}/100"

_padleft = (num) ->
  if num < 10
    return "0#{num}"
  else
    return num

_convert = (num) ->
  if num == 0
    return ""

  else if num < 1
    return "and #{_evaluate_fraction num}"  

  else if num < 20
    [q, r] = _evaluate num, 1
    return "#{basics[q-1]} #{_convert r}"

  else if num < ONE_HUNDRED
    [q, r] = _evaluate num, 10
    
    if r < 1
      return "#{special[q-2]} #{_convert r}"
    else
      return "#{special[q-2]}-#{_convert r}"

  else if num < ONE_THOUSAND
    [q, r] = _evaluate num, ONE_HUNDRED
    return "#{_convert q} hundred #{_convert r}"

  else if num < ONE_MILLION
    [q, r] = _evaluate num, ONE_THOUSAND
    return "#{_convert q} thousand #{_convert r}"

  else if num < ONE_BILLION
    [q, r] = _evaluate num, ONE_MILLION
    return "#{_convert q} million #{_convert r}"

  else if num < ONE_TRILLION
    [q, r] = _evaluate num, ONE_BILLION
    return "#{_convert q} billion #{_convert r}"

  else
    throw new Error("unsupported argument")

_format = (str) ->
  str = str.replace(/\s\s/g, ' ') 
  return str.charAt(0).toUpperCase() + str.slice(1)
    
exports.convert = (num) ->
  if num < 0
    return _format("negative #{_convert -num} dollars")
  else if num == 0
    return "Zero dollars"
  else if num < 1
    return _format("#{_evaluate_fraction num} dollars")
  else if num == 1
    return "One dollar"
  else
    return _format("#{_convert num} dollars")
