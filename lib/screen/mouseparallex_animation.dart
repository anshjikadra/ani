import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class mouseparallex_animation extends StatefulWidget {
  const mouseparallex_animation({Key? key}) : super(key: key);

  @override
  State<mouseparallex_animation> createState() => _mouseparallex_animationState();
}

class _mouseparallex_animationState extends State<mouseparallex_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Mouseparallex Animation"),centerTitle: true),

      body: ParallaxStack(
        layers: [

          ParallaxLayer(
            yRotation: 0.35,
            xOffset: 80,
            child: Center(
              child: Container(
                width: 200,
                height: 400,
                child: Image.asset("assets/images/nature.png",fit: BoxFit.cover),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
