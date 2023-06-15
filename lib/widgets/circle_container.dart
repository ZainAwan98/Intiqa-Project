import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final double size;
  final Color color;

  CircleContainer(this.size, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
