import 'package:custom_paint_and_animation/MyBookings.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/CustomShape.dart';
import 'package:custom_paint_and_animation/MyScaleAnimation.dart';
import 'package:custom_paint_and_animation/StaggerAnimation/StaggerOriginal.dart';
import 'package:custom_paint_and_animation/stack_staggered_animation/HomePageAnimator.dart';
import 'package:flutter/material.dart';

import 'StaggerAnimation/StaggerDemo.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home:   StaggerDemoOriginal(),
      // home:   StaggerDemo(),
      home:   HomePageAnimator(),
    );
  }
}

