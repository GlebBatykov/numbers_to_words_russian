class NumberToWordsRussian {
  NumberToWordsRussian._();

  static const String _zero = 'ноль';

  static const List<String> _thousandNames = ['тысяча', 'тысячи', 'тысяч'];

  static const List<String> _millionNames = [
    'миллион',
    'миллиона',
    'миллионов'
  ];

  static const List<String> _billionNames = [
    'миллиард',
    'миллиарда',
    'миллиардов'
  ];

  static const List<String> _numNames = [
    'один',
    'два',
    'три',
    'четыре',
    'пять',
    'шесть',
    'семь',
    'восемь',
    'девять',
    'десять',
    'одиннадцать',
    'двенадцать',
    'тринадцать',
    'четырнадцать',
    'пятнадцать',
    'шестнадцать',
    'семнадцать',
    'восемнадцать',
    'девятнадцать'
  ];

  static const List<String> _tensNames = [
    'двадцать',
    'тридцать',
    'сорок',
    'пятьдесят',
    'шестьдесят',
    'семьдесят',
    'восемьдесят',
    'девяносто'
  ];

  static const List<String> _hundredNames = [
    'сто',
    'двести',
    'триста',
    'четыреста',
    'пятьсот',
    'шестьсот',
    'семьсот',
    'восемьсот',
    'девятьсот'
  ];

  static String convert(int number) {
    var result = number.isNegative ? 'минус ' : '';

    number = number.abs();

    result += _convertLessTrillion(number);

    return result;
  }

  static String _convertLessTwenty(int number) {
    if (number == 0) {
      return _zero;
    }

    return _numNames[number - 1];
  }

  static String _convertLessHundred(int number) {
    if (number < 20) {
      return _convertLessTwenty(number);
    }

    var remainder = number % 10;

    if (remainder == 0) {
      return _tensNames[number ~/ 10 - 2];
    } else {
      return '${_tensNames[number ~/ 10 - 2]} ${_numNames[remainder - 1]}';
    }
  }

  static String _convertLessThousand(int number) {
    if (number < 100) {
      return _convertLessHundred(number);
    }

    var remainder = number % 100;

    if (remainder == 0) {
      return _hundredNames[number ~/ 100 - 1];
    } else {
      return '${_hundredNames[number ~/ 100 - 1]} ${_convertLessHundred(remainder)}';
    }
  }

  static String _convertLessMillion(int number) {
    if (number < 1000) {
      return _convertLessThousand(number);
    }

    var remainder = number % 1000;

    if (remainder == 0) {
      return _convertThousands(number ~/ 1000);
    } else {
      return '${_convertThousands(number ~/ 1000)} ${_convertLessThousand(remainder)}';
    }
  }

  static String _convertThousands(int number) {
    if (number == 1) {
      return _thousandNames[0];
    } else {
      var lastDigit = number % 10;

      late String name;

      if (lastDigit > 1 && lastDigit < 5) {
        name = _thousandNames[1];
      } else {
        name = _thousandNames[2];
      }

      return '${_convertLessThousand(number)} $name';
    }
  }

  static String _convertLessBillion(int number) {
    if (number < 1000000) {
      return _convertLessMillion(number);
    }

    var remainder = number % 1000000;

    if (remainder == 0) {
      return _convertMillions(number ~/ 1000000);
    } else {
      return '${_convertMillions(number ~/ 1000000)} ${_convertLessMillion(remainder)}';
    }
  }

  static String _convertMillions(int number) {
    if (number == 1) {
      return _millionNames[0];
    } else {
      var lastDigit = number % 10;

      late String name;

      if (lastDigit > 1 && lastDigit < 5) {
        name = _millionNames[1];
      } else {
        name = _millionNames[2];
      }

      return '${_convertLessThousand(number)} $name';
    }
  }

  static String _convertLessTrillion(int number) {
    if (number < 1000000000) {
      return _convertLessBillion(number);
    }

    var remainder = number % 1000000000;

    if (remainder == 0) {
      return _convertBillions(number ~/ 1000000000);
    } else {
      return '${_convertBillions(number ~/ 1000000000)} ${_convertLessBillion(remainder)}';
    }
  }

  static String _convertBillions(int number) {
    if (number == 1) {
      return _billionNames[0];
    } else {
      var lastDigit = number % 10;

      late String name;

      if (lastDigit > 1 && lastDigit < 5) {
        name = _billionNames[1];
      } else {
        name = _billionNames[2];
      }

      return '${_convertLessThousand(number)} $name';
    }
  }
}
