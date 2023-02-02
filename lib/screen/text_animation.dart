import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';



class text_animation extends StatefulWidget {
  const text_animation({Key? key}) : super(key: key);

  @override
  State<text_animation> createState() => _text_animationState();
}

class _text_animationState extends State<text_animation> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("Text Animation"),centerTitle: true),

      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Hello world!',
              textStyle:  TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              speed:Duration(milliseconds: 200),
            ),
          ],

          totalRepeatCount: 1,
          pause: const Duration(milliseconds: 100),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
        ),
      ),

    );
  }
}
