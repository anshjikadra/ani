import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class shimmer_animation extends StatefulWidget {
  const shimmer_animation({Key? key}) : super(key: key);

  @override
  State<shimmer_animation> createState() => _shimmer_animationState();
}

class _shimmer_animationState extends State<shimmer_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(title: Text("Shimmer Animation"),centerTitle: true),
      body: Center(

        child:Shimmer(
          duration: Duration(seconds: 1), //Default value
          interval: Duration(seconds: 1), //Default value: Duration(seconds: 0)
          color: Colors.white, //Default value
          colorOpacity: 0, //Default value
          enabled: true, //Default value
          direction: ShimmerDirection.fromLTRB(),  //Default Value
          child: Container(
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
