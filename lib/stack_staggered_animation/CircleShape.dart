import 'package:flutter/material.dart';

class CircleShape extends StatelessWidget {
  final double radius;
  final double opacity;
  final double opacity2;
  final Color circleColor;

  const CircleShape({required  this.radius,required  this.opacity,required  this.opacity2
    ,Key? key,}) :circleColor=/* Colors.lightBlueAccent*/
  const Color(0xff50caf4),super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity<1?opacity:opacity2,
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circleColor.withAlpha(50)
        ),
      ),
    );
  }
}
