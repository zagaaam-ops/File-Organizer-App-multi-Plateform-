/// Represents a folder inside the Explorer.
class ExplorerFolder {
  const ExplorerFolder({
    required this.name,
    required this.path,
    this.isFavorite = false,
    this.isPinned = false,
  });

  final String name;
  final String path;
  final bool isFavorite;
  final bool isPinned;

  ExplorerFolder copyWith({
    String? name,
    String? path,
    bool? isFavorite,
    bool? isPinned,
  }) {
    return ExplorerFolder(
      name: name ?? this.name,
      path: path ?? this.path,
      isFavorite: isFavorite ?? this.isFavorite,
      isPinned: isPinned ?? this.isPinned,
    );
  }
}
