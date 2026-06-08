import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isActive,
    required this.colorCurrentIndex,
  });

  final Color colorCurrentIndex;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(radius: 34, backgroundColor: colorCurrentIndex),
          )
        : CircleAvatar(radius: 38, backgroundColor: colorCurrentIndex);
  }
}
