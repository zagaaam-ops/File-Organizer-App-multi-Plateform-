import 'package:flutter/material.dart';

class ExplorerLoading extends StatelessWidget {
  const ExplorerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
