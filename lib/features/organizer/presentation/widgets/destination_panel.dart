import 'package:flutter/material.dart';

import 'destination_tile.dart';
import 'panel_header.dart';

class DestinationPanel extends StatelessWidget {
  const DestinationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PanelHeader(
          title: 'Destination',
          icon: Icons.drive_folder_upload,
        ),
        Expanded(
          child: ListView(
            children: const [
              DestinationTile(folder: 'Photos'),
              DestinationTile(folder: 'Videos'),
              DestinationTile(folder: 'Documents'),
              DestinationTile(folder: 'Archive'),
            ],
          ),
        ),
      ],
    );
  }
}
