import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.isActive,
    required this.color,
    required this.onPress,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? primaryColor : Colors.transparent,
          ),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
