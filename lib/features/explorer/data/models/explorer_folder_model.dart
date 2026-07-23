import '../../domain/entities/explorer_folder.dart';

class ExplorerFolderModel extends ExplorerFolder {
  const ExplorerFolderModel({
    required super.name,
    required super.path,
    super.isFavorite = false,
    super.isPinned = false,
  });

  factory ExplorerFolderModel.fromPath({
    required String name,
    required String path,
  }) {
    return ExplorerFolderModel(
      name: name,
      path: path,
    );
  }
}
