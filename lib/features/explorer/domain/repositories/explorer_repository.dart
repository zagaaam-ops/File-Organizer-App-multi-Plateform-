import '../entities/directory_content.dart';

/// Repository contract.
///
/// Data layer will implement this.
abstract class ExplorerRepository {
  Future<DirectoryContent> loadDirectory(
    String path,
  );

  Future<void> refreshDirectory(
    String path,
  );

  Future<void> moveFiles({
    required List<String> sourcePaths,
    required String destinationPath,
  });
}
