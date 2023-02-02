import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';


class loop_animation extends StatefulWidget {
  const loop_animation({Key? key}) : super(key: key);

  @override
  State<loop_animation> createState() => _loop_animationState();
}

class _loop_animationState extends State<loop_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar:AppBar(title: Text("Glow Animation"),centerTitle: true),
      body: Center(
        child:AvatarGlow(
          glowColor: Colors.red,
          endRadius: 90.0,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: Material(     // Replace this child with your own
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: Image.asset(
                'assets/images/780e0e64d323aad2cdd5.png',
                height: 90,
                fit: BoxFit.cover,
              ),
              radius: 40.0,
            ),
          ),
        ),
      ),
    );
  }
}
