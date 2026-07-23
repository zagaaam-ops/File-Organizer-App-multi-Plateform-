import '../../domain/entities/explorer_file.dart';

class ExplorerFileModel extends ExplorerFile {
  const ExplorerFileModel({
    required super.name,
    required super.path,
    required super.extension,
    required super.size,
    required super.modified,
    super.isHidden = false,
  });

  factory ExplorerFileModel.fromPath({
    required String path,
    required String name,
    required int size,
    required DateTime modified,
    required String extension,
  }) {
    return ExplorerFileModel(
      name: name,
      path: path,
      extension: extension,
      size: size,
      modified: modified,
    );
  }
}
