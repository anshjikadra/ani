import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class zoomtap_animation extends StatefulWidget {
  const zoomtap_animation({Key? key}) : super(key: key);

  @override
  State<zoomtap_animation> createState() => _zoomtap_animationState();
}

class _zoomtap_animationState extends State<zoomtap_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Zoomtap Animation"),),

      body: Center(
        child: ZoomTapAnimation(
            child: Container(
              height: 200,
              width: 200,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red,
              ),
              child: Center(child: Text("Tap",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
            ),
            onTap: (){},
            onLongTap: (){},
            enableLongTapRepeatEvent: false,
            longTapRepeatDuration: const Duration(milliseconds: 10),
            begin: 1.0,
            end: 0.70,
            beginDuration: const Duration(milliseconds: 20),
            endDuration: const Duration(milliseconds: 120),
            beginCurve: Curves.decelerate,
            endCurve: Curves.fastOutSlowIn
        ),
      ),
    );
  }
}
