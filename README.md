<div align="center">

**Languages:**
  
[![English](https://img.shields.io/badge/Language-English-blue?style=?style=flat-square)](README.md)
[![Russian](https://img.shields.io/badge/Language-Russian-blue?style=?style=flat-square)](README.ru.md)

</div>

- [How to use](#how-to-use)
- [Restrictions](#restrictions)

# How to use

To convert a number to words, use the `convert` static method of the `NumbersToWordsRussian` class.

Usage example:

```dart
void main() {
    print(NumberToWordsRussian.convert(3567))
}
```

Expected output:

```dart
три тысячи пятьсот шестьдесят семь
```

# Restrictions

The package works with numbers less than a trillion.
