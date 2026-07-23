import '../../domain/entities/directory_content.dart';

enum ExplorerStatus {
  initial,
  loading,
  loaded,
  empty,
  error,
}

class ExplorerState {
  const ExplorerState({
    this.status = ExplorerStatus.initial,
    this.content = const DirectoryContent(),
    this.currentPath = '',
    this.errorMessage,
  });

  final ExplorerStatus status;

  final DirectoryContent content;

  final String currentPath;

  final String? errorMessage;

  ExplorerState copyWith({
    ExplorerStatus? status,
    DirectoryContent? content,
    String? currentPath,
    String? errorMessage,
  }) {
    return ExplorerState(
      status: status ?? this.status,
      content: content ?? this.content,
      currentPath: currentPath ?? this.currentPath,
      errorMessage: errorMessage,
    );
  }
}
