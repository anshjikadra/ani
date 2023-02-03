import 'package:clock_loader/clock_loader.dart';
import 'package:flutter/material.dart';

class clockloader_animation extends StatefulWidget {
  const clockloader_animation({Key? key}) : super(key: key);

  @override
  State<clockloader_animation> createState() => _clockloader_animationState();
}

class _clockloader_animationState extends State<clockloader_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(title: Text("Clockloader Animation"),centerTitle:true,),
      body: ClockLoader(
        clockLoaderModel: ClockLoaderModel(
          shapeOfParticles: ShapeOfParticlesEnum.circle,
          mainHandleColor: Colors.white,
          particlesColor: Colors.white,
        ),
      ),
    );
  }
}
