import 'package:custom_paint_and_animation/stack_staggered_animation/CustomShape.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/PaintsPage.dart';
import 'package:flutter/material.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  Duration duration = const Duration(seconds: 2);
  double sizeValue =200;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: GestureDetector(
        child: Stack(
          children: [
            Positioned(top: 0,
              left: 0,
              child:AnimatedContainer(
                duration: duration,
                height: sizeValue,
                width: sizeValue,
                child: CustomPaint(
                    size:Size(sizeValue,sizeValue) ,
                    painter:  CustomShape(getPaint1(Size(sizeValue,sizeValue))),
                  ),
              ),
            ),
          ],
        ),
        onTap: (){
          setState(() {
            sizeValue=4000;
          });
        },
      ),
    );
    // return CustomPaint(
    //   size:const Size(5000 ,200) ,
    //   painter:  MyPainter(),
    // );
  }
}


