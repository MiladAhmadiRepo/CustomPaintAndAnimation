import 'package:flutter/material.dart';

class IconShape extends StatelessWidget {
  final double radius;
  final double opacity;

  const IconShape({required  this.radius,required  this.opacity
    ,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.contain,
        width: radius,
        height: radius,
      ),
      // child: Container(
      //   width: radius,
      //   height: radius,
      //   decoration: const BoxDecoration(
      //       shape: BoxShape.circle,
      //       color: Colors.white54
      //   ),
      // ),
    );
  }
}
