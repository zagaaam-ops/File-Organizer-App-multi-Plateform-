import '../../domain/entities/directory_content.dart';
import '../../domain/repositories/explorer_repository.dart';
import '../datasources/file_system_datasource.dart';

class ExplorerRepositoryImpl
    implements ExplorerRepository {
  ExplorerRepositoryImpl(
    this.dataSource,
  );

  final FileSystemDataSource dataSource;

  @override
  Future<DirectoryContent> loadDirectory(
    String path,
  ) async {
    await dataSource.list(path);

    return const DirectoryContent();
  }

  @override
  Future<void> moveFiles({
    required List<String> sourcePaths,
    required String destinationPath,
  }) async {}

  @override
  Future<void> refreshDirectory(
    String path,
  ) async {}
}
