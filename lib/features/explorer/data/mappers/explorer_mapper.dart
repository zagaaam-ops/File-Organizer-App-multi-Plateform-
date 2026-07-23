import '../models/explorer_file_model.dart';
import '../models/explorer_folder_model.dart';

class ExplorerMapper {
  const ExplorerMapper._();

  static ExplorerFileModel file({
    required String name,
    required String path,
    required int size,
    required DateTime modified,
    required String extension,
  }) {
    return ExplorerFileModel.fromPath(
      name: name,
      path: path,
      size: size,
      modified: modified,
      extension: extension,
    );
  }

  static ExplorerFolderModel folder({
    required String name,
    required String path,
  }) {
    return ExplorerFolderModel.fromPath(
      name: name,
      path: path,
    );
  }
}
