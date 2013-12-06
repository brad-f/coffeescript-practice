convert = require('./lib/convert').convert;
param = process.argv[2]
value = parseFloat(param.split('n=')[1])
console.log(convert(value))

