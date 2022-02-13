import 'package:custom_paint_and_animation/stack_staggered_animation/CustomShape.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/PaintsPage.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  StaggerAnimation({
    Key? key,
    required this.controller,
    required this.deviceHeight,
    required this.deviceWidth,
  })  :

        // opacity = Tween<double>(
        //   begin: 0.0,
        //   end: 1.0,
        // ).animate(
        //   CurvedAnimation(
        //     parent: controller,
        //     curve: const Interval(
        //       0.0,
        //       0.100,
        //       curve: Curves.ease,
        //     ),
        //   ),
        // ),
        widthAnimation = Tween<double>(
          begin: 0.0,
          end: 500.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.050,
              0.400,
              curve: Curves.ease,
            ),
          ),
        ),
        heightAnimation = Tween<double>(
          begin: 0.0,
          end: 500.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.200,
              0.800,
              curve: Curves.ease,
            ),
          ),
        ),
        // padding = EdgeInsetsTween(
        //   begin: const EdgeInsets.only(bottom: 16.0),
        //   end: const EdgeInsets.only(bottom: 75.0),
        // ).animate(
        //   CurvedAnimation(
        //     parent: controller,
        //     curve: const Interval(
        //       0.250,
        //       0.375,
        //       curve: Curves.ease,
        //     ),
        //   ),
        // ),

        // borderRadius = BorderRadiusTween(
        //   begin: BorderRadius.circular(4.0),
        //   end: BorderRadius.circular(75.0),
        // ).animate(
        //   CurvedAnimation(
        //     parent: controller,
        //     curve: const Interval(
        //       0.375,
        //       0.500,
        //       curve: Curves.ease,
        //     ),
        //   ),
        // ),

        // color = ColorTween(
        //   begin: Colors.indigo[100],
        //   end: Colors.orange[400],
        // ).animate(
        //   CurvedAnimation(
        //     parent: controller,
        //     curve: const Interval(
        //       0.500,
        //       0.750,
        //       curve: Curves.ease,
        //     ),
        //   ),
        // ),
        super(key: key);

  final double deviceWidth;
  final double deviceHeight;
  final Animation<double> controller;

  // final Animation<double> opacity;
  final Animation<double> widthAnimation;
  final Animation<double> heightAnimation;

  // final Animation<EdgeInsets> padding;
  // final Animation<BorderRadius?> borderRadius;
  // final Animation<Color?> color;

  // This function is called each time the controller "ticks" a new frame.
  // When it runs, all of the animation's values will have been
  // updated to reflect the controller's current value.
  Widget _buildAnimation(BuildContext context, Widget? child) {
    // return Container(
    //   padding: padding.value,
    //   alignment: Alignment.bottomCenter,
    //   child: Opacity(
    //     opacity: opacity.value,
    //     child: Container(
    //       width: width.value,
    //       height: height.value,
    //       decoration: BoxDecoration(
    //         color: color.value,
    //         border: Border.all(
    //           color: Colors.indigo[300]!,
    //           width: 3.0,
    //         ),
    //         borderRadius: borderRadius.value,
    //       ),
    //     ),
    //   ),
    // );
    Size sizeInstance= Size(widthAnimation.value, heightAnimation.value);
    return Stack(
      overflow: Overflow.visible,
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: CustomPaint(
            size: sizeInstance,
            painter: CustomShape(getPaint1(sizeInstance)),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: CustomPaint(
            size: sizeInstance,
            painter: CustomShape(getPaint2(sizeInstance)),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
