import 'package:flutter/material.dart';

class ExplorerError extends StatelessWidget {
  const ExplorerError({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
