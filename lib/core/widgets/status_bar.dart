import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    super.key,
    this.selectedFiles = 0,
    this.status = "Ready",
  });

  final int selectedFiles;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        border: const Border(
          top: BorderSide(color: Colors.black12),
        ),
      ),
      child: Row(
        children: [
          Text("$selectedFiles file(s) selected"),
          const Spacer(),
          Text(status),
        ],
      ),
    );
  }
}
