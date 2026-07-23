extension FileSizeExtension on int {
  String get readableSize {
    if (this < 1024) {
      return '$this B';
    }

    if (this < 1024 * 1024) {
      return '${(this / 1024).toStringAsFixed(1)} KB';
    }

    if (this < 1024 * 1024 * 1024) {
      return '${(this / (1024 * 1024)).toStringAsFixed(1)} MB';
    }

    return '${(this / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB';
  }
}
