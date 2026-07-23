/// Represents a file inside the Explorer.
///
/// This class is platform-independent.
/// It should not import dart:io.
class ExplorerFile {
  const ExplorerFile({
    required this.name,
    required this.path,
    required this.extension,
    required this.size,
    required this.modified,
    this.isHidden = false,
  });

  final String name;
  final String path;
  final String extension;
  final int size;
  final DateTime modified;
  final bool isHidden;

  ExplorerFile copyWith({
    String? name,
    String? path,
    String? extension,
    int? size,
    DateTime? modified,
    bool? isHidden,
  }) {
    return ExplorerFile(
      name: name ?? this.name,
      path: path ?? this.path,
      extension: extension ?? this.extension,
      size: size ?? this.size,
      modified: modified ?? this.modified,
      isHidden: isHidden ?? this.isHidden,
    );
  }
}
