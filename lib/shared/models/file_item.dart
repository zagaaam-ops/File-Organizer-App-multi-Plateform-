import 'dart:io';

/// Represents a file in FlowFiles.
class FileItem {
  const FileItem({
    required this.name,
    required this.path,
    required this.size,
    required this.modified,
    required this.extension,
    this.selected = false,
  });

  final String name;

  final String path;

  final int size;

  final DateTime modified;

  final String extension;

  final bool selected;

  File get file => File(path);

  FileItem copyWith({
    String? name,
    String? path,
    int? size,
    DateTime? modified,
    String? extension,
    bool? selected,
  }) {
    return FileItem(
      name: name ?? this.name,
      path: path ?? this.path,
      size: size ?? this.size,
      modified: modified ?? this.modified,
      extension: extension ?? this.extension,
      selected: selected ?? this.selected,
    );
  }
}
