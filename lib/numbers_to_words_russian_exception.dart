class NumbersToWordsRussianException implements Exception {
  final String? message;

  NumbersToWordsRussianException({this.message});

  @override
  String toString() {
    if (message != null) {
      return '$runtimeType: ${message!}';
    } else {
      return super.toString();
    }
  }
}
