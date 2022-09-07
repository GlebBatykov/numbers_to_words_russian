import 'package:numbers_to_words_russian/numbers_to_words.dart';
import 'package:test/test.dart';

void main() {
  test('Convert zero', () {
    var number = 0;

    var result = NumberToWordsRussian.convert(number);

    expect(result, 'ноль');
  });

  test('Convert less twenty', () {
    var number = 11;

    var result = NumberToWordsRussian.convert(number);

    expect(result, 'одиннадцать');
  });

  test('Convert less hundred', () {
    var number = 88;

    var result = NumberToWordsRussian.convert(number);

    expect(result, 'восемьдесят восемь');
  });

  test('Convert less thousand', () {
    var number = 867;

    var result = NumberToWordsRussian.convert(number);

    expect(result, 'восемьсот шестьдесят семь');
  });

  test('Convert less million', () {
    var number = 127835;

    var result = NumberToWordsRussian.convert(number);

    expect(result, 'сто двадцать семь тысяч восемьсот тридцать пять');
  });

  test('Convert less billion', () {
    var number = 5000125;

    var result = NumberToWordsRussian.convert(number);

    expect(result, 'пять миллионов сто двадцать пять');
  });

  test('Convert less trillion', () {
    var number = 25125888005;

    var result = NumberToWordsRussian.convert(number);

    expect(result,
        'двадцать пять миллиардов сто двадцать пять миллионов восемьсот восемьдесят восемь тысяч пять');
  });
}
