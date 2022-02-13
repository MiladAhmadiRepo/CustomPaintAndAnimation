import 'package:custom_paint_and_animation/stack_staggered_animation/DrawPage.dart';
import 'package:flutter/material.dart';

class BasePageAnimatorController extends StatefulWidget {
  @override
  _BasePageAnimatorControllerState createState() => _BasePageAnimatorControllerState();
}

class _BasePageAnimatorControllerState extends State<BasePageAnimatorController>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 7),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return DrawPage(
      controller: _controller,
      screenSize: size,
    );
  }
}