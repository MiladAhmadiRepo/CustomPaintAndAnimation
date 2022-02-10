import 'package:custom_paint_and_animation/StaggerAnimation/StaggerAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class StaggerDemo extends StatefulWidget {
  const StaggerDemo({Key? key}) : super(key: key);

  @override
  _StaggerDemoState createState() => _StaggerDemoState();
}

class _StaggerDemoState extends State<StaggerDemo>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(seconds: 10), vsync: this);
//addPostFrameCallback
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 1),(){
        _playAnimation();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
      // await _controller.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
    }
  }

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

     return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Animation'),
      ),
      body: StaggerAnimation(controller: _controller.view,deviceWidth: deviceWidth,deviceHeight: deviceHeight,)

    );
  }
}
