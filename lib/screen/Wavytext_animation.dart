

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class wavytext_animation extends StatefulWidget {
  @override
  State<wavytext_animation> createState() => _wavytext_animation();
}

class _wavytext_animation extends State<wavytext_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Text("Wavytext Animation"),centerTitle: true,),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          child: AnimatedTextKit(
            animatedTexts: [

              WavyAnimatedText('Look at the waves.'),
            ],
            repeatForever: true,
            isRepeatingAnimation: true,
          ),
        ),
      ),
    );
  }
}



