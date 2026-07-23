import 'dart:io';

import '../../domain/entities/directory_content.dart';
import '../../domain/entities/explorer_file.dart';
import '../../domain/entities/explorer_folder.dart';
import '../../domain/repositories/explorer_repository.dart';
import '../datasources/file_system_datasource.dart';
import '../mappers/file_system_mapper.dart';

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
    final entities = await dataSource.list(path);

    final folders = <ExplorerFolder>[];
    final files = <ExplorerFile>[];

    for (final entity in entities) {
      if (entity is Directory) {
        folders.add(
          FileSystemMapper.toFolder(entity),
        );
      } else if (entity is File) {
        files.add(
          await FileSystemMapper.toFile(entity),
        );
      }
    }

    folders.sort(
      (a, b) =>
          a.name.toLowerCase().compareTo(
                b.name.toLowerCase(),
              ),
    );

    files.sort(
      (a, b) =>
          a.name.toLowerCase().compareTo(
                b.name.toLowerCase(),
              ),
    );

    return DirectoryContent(
      folders: folders,
      files: files,
    );
  }

  @override
  Future<void> refreshDirectory(
    String path,
  ) async {
    await loadDirectory(path);
  }

  @override
  Future<void> moveFiles({
    required List<String> sourcePaths,
    required String destinationPath,
  }) async {
    throw UnimplementedError(
      'Move engine will be implemented in Commit 006.',
    );
  }
}
