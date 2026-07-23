import 'dart:io';

class FileSystemDataSource {
  const FileSystemDataSource();

  Future<List<FileSystemEntity>> list(
    String directory,
  ) async {
    final dir = Directory(directory);

    if (!await dir.exists()) {
      throw FileSystemException(
        'Directory not found',
        directory,
      );
    }

    return await dir.list(followLinks: false).toList();
  }
}
