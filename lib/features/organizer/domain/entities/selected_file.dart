import '../../../../shared/models/file_item.dart';

/// Represents a selected file inside Organizer Mode.
class SelectedFile {
  const SelectedFile({
    required this.file,
    required this.selectedAt,
  });

  final FileItem file;

  final DateTime selectedAt;
}
