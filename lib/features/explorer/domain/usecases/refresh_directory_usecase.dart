import '../repositories/explorer_repository.dart';

class RefreshDirectoryUseCase {
  const RefreshDirectoryUseCase(
    this.repository,
  );

  final ExplorerRepository repository;

  Future<void> call(
    String path,
  ) {
    return repository.refreshDirectory(path);
  }
}
