import 'dart:io';

/// Represents a folder.
class FolderItem {
  const FolderItem({
    required this.name,
    required this.path,
    this.favorite = false,
  });

  final String name;

  final String path;

  final bool favorite;

  Directory get directory => Directory(path);

  FolderItem copyWith({
    String? name,
    String? path,
    bool? favorite,
  }) {
    return FolderItem(
      name: name ?? this.name,
      path: path ?? this.path,
      favorite: favorite ?? this.favorite,
    );
  }
}
