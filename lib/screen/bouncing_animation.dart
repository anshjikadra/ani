
import 'package:flutter/material.dart';

class bouncing_animation extends StatefulWidget {
  @override
  State<bouncing_animation> createState() => _bouncing_animation();
}

class _bouncing_animation extends State<bouncing_animation> {
  bool animated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bouncing Animation",),centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Text('bounce'),
              style : animated ? TextStyle(
                color: Colors.blue,
                fontSize: 80,
              ) : TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
              duration: Duration(milliseconds: 1000),
              curve: Curves.elasticOut,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                  animated = !animated;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}



