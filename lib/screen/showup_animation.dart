import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class showup_animation extends StatefulWidget {
  const showup_animation({Key? key}) : super(key: key);

  @override
  State<showup_animation> createState() => _showup_animationState();
}

class _showup_animationState extends State<showup_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(title: Text("Showup_animation"),),

      body: Center(
        child: ShowUpAnimation(
          delayStart: Duration(seconds: 1),
          animationDuration: Duration(seconds: 1),
          curve: Curves.bounceIn,
          direction: Direction.vertical,
          offset: 0.5,
          child: Image.asset("assets/images/780e0e64d323aad2cdd5.png"),
        ),
      ),
    );
  }
}
