import '../entities/directory_content.dart';
import '../repositories/explorer_repository.dart';

class LoadDirectoryUseCase {
  const LoadDirectoryUseCase(
    this.repository,
  );

  final ExplorerRepository repository;

  Future<DirectoryContent> call(
    String path,
  ) {
    return repository.loadDirectory(path);
  }
}
