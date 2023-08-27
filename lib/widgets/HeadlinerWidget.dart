import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart/constants.dart';

class HeadlinerWidget extends StatelessWidget {
  final String Tab;
  final VoidCallback? onpress;
  HeadlinerWidget({
    super.key,
    required this.Tab,
    this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onpress, child: Text(Tab, style: HeadlineBarStyle));
  }
}
