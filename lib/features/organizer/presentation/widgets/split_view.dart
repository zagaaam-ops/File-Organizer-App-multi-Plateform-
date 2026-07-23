import 'package:flutter/material.dart';

class SplitView extends StatelessWidget {
  const SplitView({
    super.key,
    required this.left,
    required this.right,
  });

  final Widget left;
  final Widget right;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: left,
        ),
        const VerticalDivider(width: 1),
        Expanded(
          flex: 2,
          child: right,
        ),
      ],
    );
  }
}
