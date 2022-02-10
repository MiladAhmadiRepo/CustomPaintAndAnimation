import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  final double radius;
  final double opacity;
  const CircleShape({required  this.radius,required  this.opacity,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        width: radius,
        height: radius,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white24
        ),
      ),
    );
  }
}
