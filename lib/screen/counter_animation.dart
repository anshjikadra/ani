import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class conter_animation extends StatefulWidget {
  const conter_animation({Key? key}) : super(key: key);

  @override
  State<conter_animation> createState() => _conter_animationState();
}

class _conter_animationState extends State<conter_animation> {

  double _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(title: Text("Counter Animation"), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            AnimatedFlipCounter(
              value: _value,
              prefix: "Level ",
              padding: EdgeInsets.all(8),
              textStyle: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                letterSpacing: -8.0,
                color: Colors.yellow,
                shadows: [
                  BoxShadow(
                    color: Colors.orange,
                    offset: Offset(2, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [1,2].map(_buildButton).toList(),
            ),

          ],
        ),
      ),
    );
  }


  Widget _buildButton(num value) {
    return Column(
      children: [
        ElevatedButton(
          child: Text('+$value'),
          onPressed: ()  => setState(() => _value += value),
        ),
        ElevatedButton(
          child: Text('-$value'),
          onPressed: () => setState(() => _value -= value),
        ),
      ],
    );
  }
}

