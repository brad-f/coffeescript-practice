// Generated by CoffeeScript 1.6.3
(function() {
  var ONE_BILLION, ONE_HUNDRED, ONE_MILLION, ONE_THOUSAND, ONE_TRILLION, basics, special, _convert, _evaluate, _evaluate_fraction, _format, _padleft;

  basics = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];

  special = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

  ONE_HUNDRED = 100;

  ONE_THOUSAND = ONE_HUNDRED * 10;

  ONE_MILLION = ONE_THOUSAND * ONE_THOUSAND;

  ONE_BILLION = ONE_MILLION * ONE_THOUSAND;

  ONE_TRILLION = ONE_BILLION * ONE_THOUSAND;

  _evaluate = function(numerator, denominator) {
    var quotient, remainder;
    quotient = Math.floor(numerator / denominator);
    remainder = numerator % denominator;
    return [quotient, remainder];
  };

  _evaluate_fraction = function(num) {
    return "" + (_padleft(Math.round(num * 100))) + "/100";
  };

  _padleft = function(num) {
    if (num < 10) {
      return "0" + num;
    } else {
      return num;
    }
  };

  _convert = function(num) {
    var q, r, _ref, _ref1, _ref2, _ref3, _ref4, _ref5;
    if (num === 0) {
      return "";
    } else if (num < 1) {
      return "and " + (_evaluate_fraction(num));
    } else if (num < 20) {
      _ref = _evaluate(num, 1), q = _ref[0], r = _ref[1];
      return "" + basics[q - 1] + " " + (_convert(r));
    } else if (num < ONE_HUNDRED) {
      _ref1 = _evaluate(num, 10), q = _ref1[0], r = _ref1[1];
      if (r < 1) {
        return "" + special[q - 2] + " " + (_convert(r));
      } else {
        return "" + special[q - 2] + "-" + (_convert(r));
      }
    } else if (num < ONE_THOUSAND) {
      _ref2 = _evaluate(num, ONE_HUNDRED), q = _ref2[0], r = _ref2[1];
      return "" + (_convert(q)) + " hundred " + (_convert(r));
    } else if (num < ONE_MILLION) {
      _ref3 = _evaluate(num, ONE_THOUSAND), q = _ref3[0], r = _ref3[1];
      return "" + (_convert(q)) + " thousand " + (_convert(r));
    } else if (num < ONE_BILLION) {
      _ref4 = _evaluate(num, ONE_MILLION), q = _ref4[0], r = _ref4[1];
      return "" + (_convert(q)) + " million " + (_convert(r));
    } else if (num < ONE_TRILLION) {
      _ref5 = _evaluate(num, ONE_BILLION), q = _ref5[0], r = _ref5[1];
      return "" + (_convert(q)) + " billion " + (_convert(r));
    } else {
      throw new Error("unsupported argument");
    }
  };

  _format = function(str) {
    str = str.replace(/\s\s/g, ' ');
    return str.charAt(0).toUpperCase() + str.slice(1);
  };

  exports.convert = function(num) {
    if (num < 0) {
      return _format("negative " + (_convert(-num)) + " dollars");
    } else if (num === 0) {
      return "Zero dollars";
    } else if (num < 1) {
      return _format("" + (_evaluate_fraction(num)) + " dollars");
    } else if (num === 1) {
      return "One dollar";
    } else {
      return _format("" + (_convert(num)) + " dollars");
    }
  };

}).call(this);
