import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    //----------------------------------------------------------------------------------------------
    //paint
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 71, 134, 184)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width*0.50,0),Offset(size.width*0.50,size.height),
        [Color(0xff0239a6), Color(0xffffffff)],[0.00,1.00]);

    //----------------------------------------------------------------------------------------------
    //path
    // paint.color = Color(0xffff5252).withOpacity(1);
    path = Path();
    path.lineTo(0, size.height);
    path.cubicTo(size.width * 0.09, size.height * 0.93, size.width * 0.11, size.height * 0.78, size.width * 0.11, size.height * 0.66);
    path.cubicTo(size.width * 0.11, size.height * 0.49, size.width * 0.16, size.height * 0.37, size.width / 4, size.height * 0.28);
    path.cubicTo(size.width * 0.36, size.height * 0.23, size.width * 0.54, size.height * 0.18, size.width * 0.68, size.height * 0.16);
    path.cubicTo(size.width * 0.81, size.height * 0.13, size.width * 0.89, size.height * 0.07, size.width * 0.98, 0);
    path.cubicTo(size.width * 0.94, 0, size.width * 0.86, 0, size.width * 0.84, 0);
    path.cubicTo(size.width * 0.56, 0, size.width * 0.28, 0, 0, 0);
    path.cubicTo(0, 0, 0, size.height, 0, size.height);
    canvas.drawPath(path, paint0);

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
