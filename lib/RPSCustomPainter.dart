import 'dart:ui' as ui;
import 'package:flutter/material.dart';
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 71, 134, 184)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(size.width*0.50,0),Offset(size.width*0.50,size.height),
        [Color(0xff0239a6), Color(0xffffffff)],[0.00,1.00]);

    Path path0 = Path();
    path0.moveTo(0,size.height);
    path0.lineTo(size.width*0.1900000,size.height*0.6500000);
    path0.lineTo(size.width*0.5000000,size.height*0.5000000);
    path0.lineTo(size.width*0.8700000,size.height*0.3700000);
    path0.lineTo(size.width,0);
    path0.lineTo(0,0);
    path0.lineTo(0,size.height);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
