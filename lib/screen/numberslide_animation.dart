import 'package:flutter/material.dart';
import 'package:number_slide_animation/number_slide_animation.dart';

class numberslide_animation extends StatefulWidget {
  const numberslide_animation({Key? key}) : super(key: key);

  @override
  State<numberslide_animation> createState() => _numberslide_animationState();
}

class _numberslide_animationState extends State<numberslide_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Numberslide Animation"), centerTitle: true),
      body: Container(
        child: Center(
          child: NumberSlideAnimation(
            number: "12345678987654321",
            duration: const Duration(seconds: 2),
            curve: Curves.bounceIn,
            textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
