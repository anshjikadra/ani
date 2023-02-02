import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class background_animation extends StatefulWidget {
  const background_animation({Key? key}) : super(key: key);

  @override
  State<background_animation> createState() => _background_animationState();
}

class _background_animationState extends State<background_animation> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Background Animation"),centerTitle: true),

      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(),
        vsync: this,
        child: Center(child: Text('Hello World....!',style: TextStyle(fontWeight: FontWeight.bold))),
      ),
    );
  }
}
