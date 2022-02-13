//----------------------------------------------------------------------------------------------
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

getPaint1(Size size){
  Paint paint0 = Paint()
    // ..color =  Colors.blue
    ..style = PaintingStyle.fill;
    // ..strokeWidth = 1;
  paint0.shader = ui.Gradient.linear(
      // Offset(size.width*0.50,0),Offset(size.width*0.50,size.height),
      Offset(size.width,0),Offset(0,size.height),
      // [const Color(0xff043f77),const Color(0xff51b2e5), ],[0.00,1.00]);
      [const Color(0xff51b2e5), const Color(0xff0e5ca6)],[0.00,1.00]);
      // [const Color(0xff043f77),const Color(0xff0aaaab), ],[0.00,1.00]);
  return paint0;
}

getPaint2(Size size){
  Paint paint0 = Paint()
    // ..color =  Colors.white
    ..style = PaintingStyle.fill;
    // ..strokeWidth = 1;
  paint0.shader = ui.Gradient.linear(
      Offset(size.width*0.50,0),Offset(size.width*0.50,size.height),
      [const Color(0xff0e5ca6), const Color(0xff000000)],[0.00,1.00]);
      // [const Color(0xffccdd00), const Color(0xffcaacc0)],[0.00,1.00]);
  return paint0;
}