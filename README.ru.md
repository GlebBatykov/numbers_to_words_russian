<div align="center">

**Языки:**
  
[![English](https://img.shields.io/badge/Language-English-blue?style=?style=flat-square)](README.md)
[![Russian](https://img.shields.io/badge/Language-Russian-blue?style=?style=flat-square)](README.ru.md)

</div>

- [Как пользоваться](#как-пользоваться)
- [Ограничения](#ограничения)

# Как пользоваться

Для конвертации числа в слова используйте статический метод `convert` класса `NumbersToWordsRussian`.

Пример использования:

```dart
void main() {
    print(NumbersToWordsRussian.convert(3567))
}
```

Ожидаемых вывод:

```dart
три тысячи пятьсот шестьдесят семь
```

# Ограничения

Пакет работает с числами меньшими чем триллион.
