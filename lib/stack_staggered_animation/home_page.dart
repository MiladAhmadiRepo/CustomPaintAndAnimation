import 'package:custom_paint_and_animation/stack_staggered_animation/CustomShape.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/paints.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/AnimationsPrepared.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
    required AnimationController controller,
  })  : animation = AnimationsPrepared(controller),
        super(key: key);
  final AnimationsPrepared animation;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
        animation: animation.controller,
        builder: (context, child) => _buildAnimation(context, child, size),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child, Size size) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: deviceWidth,
      height: deviceHeight,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          firstDraw(Size(animation.customShape1.value,animation.customShape1.value)),
          secondDraw(Size(animation.customShape2.value,animation.customShape2.value)),
          // circle(
          //   size,
          //   animation.avaterSize.value,
          // ),
        ],
      ),
    );
  }

  // Container topBar(double height) {
  //   return Container(
  //     height: height,
  //     width: double.infinity,
  //     color: Colors.blue,
  //   );
  // }

  Widget firstDraw(Size sizeInstance) {
    return  Positioned(
      left: 0,
      top: 0,
      child: CustomPaint(
        size: sizeInstance,
        painter: CustomShape(getPaint1(sizeInstance)),
      ),
    );
  }
  Widget secondDraw(Size sizeInstance) {
    return  Positioned(
      left: 0,
      top: 0,
      child: CustomPaint(
        size: sizeInstance,
        painter: CustomShape(getPaint2(sizeInstance)),
      ),
    );
  }

  Positioned circle(Size size, double animationValue) {
    return Positioned(
      top: 100,
      left: size.width / 2 - 50,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          animationValue,
          animationValue,
          1.0,
        ),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.red.shade700,
          ),
        ),
      ),
    );
  }

  Align placeholderBox(double height, double width, Alignment alignment) {
    return Align(
      alignment: alignment,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}