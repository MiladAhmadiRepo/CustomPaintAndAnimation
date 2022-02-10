import 'package:custom_paint_and_animation/stack_staggered_animation/CustomShape.dart';
import 'package:flutter/material.dart';
class MyScaleAnimation extends StatefulWidget {
  @override
  _MyScaleAnimationState createState() => _MyScaleAnimationState();
}

class _MyScaleAnimationState extends State<MyScaleAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  _MyScaleAnimationState() {
    // Start the animation in 2 seconds after screen open.
    Future.delayed(Duration(seconds: 10))
        .then((_) => _animationController.forward());
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    // Properly dispose the controller. This is important!
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: CustomPaint(
          painter: AnimatedCustomPainter(
            _animationController.view,
          ),
        ),
      ),
    );
  }
}

class AnimatedCustomPainter extends CustomPainter {
  final _paint = Paint();
  final Animation<double> _size;
  final Animation<double> _offset;
  final Animation<Color?> _color;

  AnimatedCustomPainter(Animation<double> animation)
      : _size = Tween<double>(begin: 50, end: 150).animate(animation),
        _offset = Tween<double>(begin: 200, end: 0).animate(animation),
        _color =
        ColorTween(begin: Colors.red, end: Colors.blue).animate(animation),
        super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = _color.value??Colors.red;
    canvas.drawCircle(
      Offset(
        size.width / 2,
        size.height / 2 + _offset.value,
      ),
      _size.value,
      _paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}