convert = require('./convert').convert

describe 'Convert', ->
  
  it 'will return one', ->
    result = convert(1)
    expect(result).toBe "one"
