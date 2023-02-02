import 'package:animated_switch/animated_switch.dart';
import 'package:flutter/material.dart';

class animeted_switch extends StatefulWidget {
  const animeted_switch({Key? key}) : super(key: key);

  @override
  State<animeted_switch> createState() => _animeted_switchState();
}

class _animeted_switchState extends State<animeted_switch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Animeted Switch"), centerTitle: true,),

      body: Center(

          child: AnimatedSwitch(
            height: 60,
            onChanged: (bool state) {
              print('turned ${(state) ? 'on' : 'off'}');
            },
            colorOn: Colors.blue,
            colorOff: Colors.grey,
            indicatorColor: Colors.yellow,
              textOn: "On",
              textOff: "Off",
              textStyle: TextStyle(color: Colors.white, fontSize: 20),
            iconOff: Icons.lock_open,
            iconOn: Icons.lock,

          ),
      ),
    );
  }
}
