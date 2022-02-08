import 'package:custom_paint_and_animation/MyPainter.dart';
import 'package:flutter/material.dart';

class MyBookings extends StatelessWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.red,
      child: Stack(
        children: [
          Positioned(top: 0,
            left: 0,
            height: 2000,
            width: 2000,
            child:CustomPaint(
                size:Size(2000,2000) ,
                painter:  MyPainter(),
              ),
          ),
        ],
      ),
    );
    // return CustomPaint(
    //   size:const Size(5000 ,200) ,
    //   painter:  MyPainter(),
    // );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint =Paint()..color=Colors.red
        ..strokeWidth=15;
    Offset start =Offset(0, size.height/2);
    Offset end =Offset(size.width, size.height/2);

    canvas.drawLine(start,end, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
