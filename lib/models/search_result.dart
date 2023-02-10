class SearchResult {
  final bool isCancel;
  final bool isManual;

  SearchResult({
    required this.isCancel,
    this.isManual = false,
  });

  @override
  String toString() {
    return '{isCancel: $isCancel, isManual: $isManual}';
  }
}
