import 'package:flutter/material.dart';

class ExplorerEmpty extends StatelessWidget {
  const ExplorerEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "This folder is empty.",
      ),
    );
  }
}
