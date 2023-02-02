
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class moon_animation extends StatefulWidget {
  @override
  State<moon_animation> createState() => _moon_animation();
}

class _moon_animation extends State<moon_animation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
    AnimationController(vsync: this, duration: Duration(seconds: 5))
      ..repeat();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      appBar: AppBar(title: Text("Spinning Earth"),centerTitle: true),
      body: Stack(
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (_, child) {
                return Transform.rotate(
                  angle: _controller.value,
                  child: child,
                );
              },
              child: Image.asset(
                'assets/images/earth-11623.png',fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 5,
              width:5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.white.withOpacity(1),
                    Colors.white.withOpacity(.1),
                    Colors.white.withOpacity(.05),
                    Colors.black.withOpacity(.05),
                    Colors.black.withOpacity(.1),
                    Colors.black.withOpacity(.2),
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.6),
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Image link: https://www.shutterstock.com/image-photo/full-moon-isolated-over-white-background-516611251



