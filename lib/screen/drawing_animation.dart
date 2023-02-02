import 'dart:math';
import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter/material.dart';




class drawing_animation extends StatefulWidget {
  @override
  State<drawing_animation> createState() => _drawing_animation();
}

class _drawing_animation extends State<drawing_animation> {
  bool run = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,

      appBar: AppBar(title: Text("Drawing Animation"),centerTitle: true,),
      floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            run = !run;
          }),
          child: Icon((run) ? Icons.stop : Icons.play_arrow)),
      body: Center(
          child: Column(children: <Widget>[
            //Simplfied AnimatedDrawing using Flutter Path objects
            Expanded(
                child: AnimatedDrawing.paths(
                  [
                    (Path()
                      ..addOval(Rect.fromCircle(center: Offset.zero, radius: 25.0)))
                        .transform(Matrix4.rotationX(-pi)
                        .storage), //A circle which is slightly rotated
                  ],
                  paints: [
                    Paint()..style = PaintingStyle.stroke,
                  ],
                  run: run,
                  animationOrder: PathOrders.original,
                  duration: Duration(seconds: 2),
                  lineAnimation: LineAnimation.oneByOne,
                  animationCurve: Curves.linear,
                  onFinish: () => setState(() {
                    run = false;
                  }),
                )),

            //Simplfied AnimatedDrawing parsing Path objects from an Svg asset
            Expanded(

                child: AnimatedDrawing.svg(
                  'assets/circle.svg',
                  run: run,
                  duration: Duration(seconds: 5),
                  lineAnimation: LineAnimation.oneByOne,
                  animationCurve: Curves.linear,
                  onFinish: () => setState(() {
                    run = false;
                  }),
                )),
          ])),
    );
  }
}