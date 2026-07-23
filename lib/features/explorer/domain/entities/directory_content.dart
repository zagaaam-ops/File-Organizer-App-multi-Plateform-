import 'explorer_file.dart';
import 'explorer_folder.dart';

/// Represents the contents of one directory.
class DirectoryContent {
  const DirectoryContent({
    this.files = const [],
    this.folders = const [],
  });

  final List<ExplorerFile> files;
  final List<ExplorerFolder> folders;

  int get totalFiles => files.length;

  int get totalFolders => folders.length;

  bool get isEmpty =>
      files.isEmpty && folders.isEmpty;
}
