import 'package:flutter/material.dart';

class AnimationsPrepared {
  AnimationsPrepared(this.controller)
      : customShape1 = Tween<double>(begin: 0, end: 5000).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0, 0.20/*, curve: Curves.easeIn*/),
          ),
        ),
        customShape2 = Tween<double>(begin: 0, end: 5000).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.05, 0.25,),
          ),
        ),
        circleOpacity = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.6, 0.65, curve: Curves.easeIn),
          ),
        ),
        circleOpacity2 = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.65, 0.8),
          ),
        ),
        circleScale = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.65, 0.8),
          ),
        ),
        circleScale2 = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.65, 0.8),
          ),
        ),
        iconScale = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.65, 0.8),
          ),
        ),
        iconOpacity = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.65, 0.8),
          ),
        );

  final AnimationController controller;
  final Animation<double> customShape1;
  final Animation<double> customShape2;
  final Animation<double> circleOpacity;
  final Animation<double> circleOpacity2;
  final Animation<double> iconOpacity;
  final Animation<double> circleScale;
  final Animation<double> circleScale2;
  final Animation<double> iconScale;
}
