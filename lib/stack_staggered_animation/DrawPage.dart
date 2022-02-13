import 'package:custom_paint_and_animation/stack_staggered_animation/CircleShape.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/CustomShape.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/IconShape.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/PaintsPage.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/AnimationsPrepared.dart';
import 'package:flutter/material.dart';

class DrawPage extends StatelessWidget {
  DrawPage({
    required AnimationController controller,
    required this.screenSize,
    Key? key,
  })  : animation = AnimationsPrepared(controller,screenSize),
        super(key: key);
  final AnimationsPrepared animation;
  final Size screenSize;
  //Color color = const Color(0xff151419);
  //------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: /*color*/ Colors.white,
      body: AnimatedBuilder(
        animation: animation.controller,
        builder: (context, child) => _buildAnimation(context, child),
      ),
    );
  }

  //------------------------------------------------------------------------------------------------

  Widget _buildAnimation(BuildContext context, Widget? child) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: deviceWidth,
      height: deviceHeight,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: <Widget>[
          shapeOneDraw(Size(animation.customShape1.value, animation.customShape1.value)),
          shapeSecondDraw(Size(animation.customShape2.value, animation.customShape2.value)),
          shapeCircleDraw(animation.circleFirstScale.value, animation.circleFirstOpacity.value,
              animation.circleFirstOpacity2.value),
          shapeCircleDraw(animation.circleSecondScale.value, animation.circleSecondOpacity.value,
              animation.circleSecondOpacity2.value),
          shapeIconDraw(animation.iconScale.value, animation.iconOpacity.value),
        ],
      ),
    );
  }

  //------------------------------------------------------------------------------------------------
  Widget shapeOneDraw(Size sizeInstance) {
    return Positioned(
      left: 0,
      top: 0,
      child: CustomPaint(
        size: sizeInstance,
        painter: CustomShape(getPaint1(sizeInstance)),
      ),
    );
  }

  Widget shapeSecondDraw(Size sizeInstance) {
    return Positioned(
      left: 0,
      top: 0,
      child: CustomPaint(
        size: sizeInstance,
        painter: CustomShape(getPaint2(sizeInstance)),
      ),
    );
  }

  Widget shapeCircleDraw(double radius, double opacity, double opacity2) {
    return Positioned(
      child: CircleShape(radius: radius, opacity: opacity, opacity2: opacity2),
    );
  }

  Widget shapeIconDraw(double radius, double opacity) {
    return Positioned(
      child: IconShape(radius: radius, opacity: opacity),
    );
  }
//------------------------------------------------------------------------------------------------

}
