import 'package:credits/credits.dart';
import 'package:flutter/material.dart';

class credits_animation extends StatefulWidget {
  const credits_animation({Key? key}) : super(key: key);

  @override
  State<credits_animation> createState() => _credits_animationState();
}

class _credits_animationState extends State<credits_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Credits Animation"),centerTitle: true,),

      body: Credits(
        duration: Duration(seconds: 10),
        delay:Duration(seconds: 1),
        children: [
          _creditText("CAST", 40),
          _creditText("Actor 1", 20),
          _creditText("Actor 2", 22),
          _creditText("Actor 3", 24),
          _creditText("Actor 4", 26),
        ],
      ),
    );
  }
  Widget _creditText(String text, double size) => Padding(
    padding: const EdgeInsets.only(bottom: 32),
    child: Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );
}
