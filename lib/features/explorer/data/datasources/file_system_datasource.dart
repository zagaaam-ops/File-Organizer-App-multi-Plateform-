import 'dart:io';

class FileSystemDataSource {
  const FileSystemDataSource();

  Future<List<FileSystemEntity>> list(
    String directory,
  ) async {
    final dir = Directory(directory);

    if (!await dir.exists()) {
      return [];
    }

    return dir.list().toList();
  }
}
