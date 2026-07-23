import 'package:flutter/material.dart';

class FileTile extends StatelessWidget {
  const FileTile({
    super.key,
    required this.fileName,
    this.selected = false,
  });

  final String fileName;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.insert_drive_file_outlined),
      title: Text(fileName),
      selected: selected,
      onTap: () {},
    );
  }
}
