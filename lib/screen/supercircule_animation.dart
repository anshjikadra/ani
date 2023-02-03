import 'package:flutter/material.dart';
import 'package:super_circle/super_circle.dart';

class supercircule_animation extends StatefulWidget {
  const supercircule_animation({Key? key}) : super(key: key);

  @override
  State<supercircule_animation> createState() => _supercircule_animationState();
}

class _supercircule_animationState extends State<supercircule_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Supercircle Animation"),centerTitle: true),
      body: Center(
        child: SuperCircle(
          size: 400,
          rotateBegin: 1.0,
          rotateEnd: 0.0,
          backgroundCircleColor: Colors.black,
          speedRotateCircle: 6000,
          speedChangeShadowColorInner: 2000,
          speedChangeShadowColorOuter: 2000,
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              // color: Colors.red,
              child: Image.asset(
                'assets/images/780e0e64d323aad2cdd5.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
