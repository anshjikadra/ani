import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';

class button_animation extends StatefulWidget {
  const button_animation({Key? key}) : super(key: key);

  @override
  State<button_animation> createState() => _button_animationState();
}

class _button_animationState extends State<button_animation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Button Animation",),centerTitle: true),

      body: Center(
        child: AnimatedButton.strip(
          width: 200,
          height: 70,
          text: 'SUBMIT',
          isReverse: true,
          selectedTextColor: Colors.black,
          stripTransitionType: StripTransitionType.LEFT_TO_RIGHT,
          selectedBackgroundColor: Colors.lime,
          textStyle: GoogleFonts.nunito(
              fontSize: 28,
              letterSpacing: 5,
              color: Colors.red,
              fontWeight: FontWeight.w300), onPress: () {  },
        ),
      ),

    );
  }
}
