import 'package:flutter/material.dart';

class AnimationsPrepared {
  AnimationsPrepared(this.controller,this.screenSize)
      //------------------------------------------------------------------------------------------------
      :customShape1 = Tween<double>(begin: 0, end: screenSize.height*4).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0, 0.20 , curve: Curves.decelerate),
          ),
        ),
        customShape2 = Tween<double>(begin: 0, end: screenSize.height*4).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.05, 0.25, curve: Curves.decelerate),
          ),
        ),
        //------------------------------------------------------------------------------------------------
        circleFirstOpacity = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.25, 0.45, curve: Curves.decelerate),
          ),
        ),
        circleFirstOpacity2 = Tween<double>(begin: 1, end: 0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.45, 0.65, curve: Curves.decelerate),
          ),
        ),
        circleFirstScale = Tween<double>(begin: screenSize.width*0.20, end: screenSize.width*0.60).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.25, 0.65, curve: Curves.decelerate),
          ),
        ),
        //------------------------------------------------------------------------------------------------
        circleSecondOpacity = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.45, 0.55, curve: Curves.decelerate),
          ),
        ),
        circleSecondOpacity2 = Tween<double>(begin: 1, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.55, 0.75, curve: Curves.decelerate),
          ),
        ),
        circleSecondScale = Tween<double>(begin: screenSize.width*0.20, end: screenSize.width*0.60).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.45, 0.75, curve: Curves.decelerate),
          ),
        ),
        //------------------------------------------------------------------------------------------------
        iconOpacity = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.65, 0.80, curve: Curves.decelerate),
          ),
        ),
        iconScale = Tween<double>(begin: screenSize.width*0.5, end: screenSize.width*0.65).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.65, 0.80, curve: Curves.decelerate),
          ),
        );

  //------------------------------------------------------------------------------------------------

  final AnimationController controller;
  final Animation<double> customShape1;
  final Animation<double> customShape2;
  final Animation<double> circleFirstOpacity;
  final Animation<double> circleFirstOpacity2;
  final Animation<double> circleSecondOpacity;

  final Animation<double> circleSecondOpacity2;
  final Animation<double> iconOpacity;
  final Animation<double> circleFirstScale;
  final Animation<double> circleSecondScale;
  final Animation<double> iconScale;

  final Size screenSize;

}
