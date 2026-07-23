import 'package:flutter/material.dart';

class DestinationTile extends StatelessWidget {
  const DestinationTile({
    super.key,
    required this.folder,
  });

  final String folder;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.folder,
        color: Colors.amber,
      ),
      title: Text(folder),
      onTap: () {},
    );
  }
}
