import '../repositories/explorer_repository.dart';

class MoveFilesUseCase {
  const MoveFilesUseCase(
    this.repository,
  );

  final ExplorerRepository repository;

  Future<void> call({
    required List<String> sourcePaths,
    required String destinationPath,
  }) {
    return repository.moveFiles(
      sourcePaths: sourcePaths,
      destinationPath: destinationPath,
    );
  }
}
