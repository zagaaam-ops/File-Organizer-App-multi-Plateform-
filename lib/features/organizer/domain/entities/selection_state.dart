import '../../../../shared/models/file_item.dart';

class SelectionState {
  const SelectionState({
    this.files = const [],
  });

  final List<FileItem> files;

  int get count => files.length;

  bool get hasSelection => files.isNotEmpty;

  SelectionState copyWith({
    List<FileItem>? files,
  }) {
    return SelectionState(
      files: files ?? this.files,
    );
  }
}
