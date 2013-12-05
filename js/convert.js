// Generated by CoffeeScript 1.6.3
(function() {
  var basics, convert;

  basics = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];

  convert = function(num) {
    if (num < 20) {
      return basics[num];
    } else if (num < 30) {
      return ("twenty " + convert(num % 10)).trim();
    }
  };

  exports.convert = convert;

}).call(this);
