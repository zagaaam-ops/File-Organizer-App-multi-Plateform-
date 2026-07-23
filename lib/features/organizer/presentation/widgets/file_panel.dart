import 'package:flutter/material.dart';

import 'file_tile.dart';
import 'panel_header.dart';

class FilePanel extends StatelessWidget {
  const FilePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PanelHeader(
          title: 'Files',
          icon: Icons.folder_open,
        ),
        Expanded(
          child: ListView(
            children: const [
              FileTile(fileName: 'IMG_0001.jpg'),
              FileTile(fileName: 'IMG_0002.jpg'),
              FileTile(fileName: 'Video001.mp4'),
              FileTile(fileName: 'Report.pdf'),
            ],
          ),
        ),
      ],
    );
  }
}
