import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class gridview_animation extends StatefulWidget {
  const gridview_animation({Key? key}) : super(key: key);

  @override
  State<gridview_animation> createState() => _gridview_animationState();
}

class _gridview_animationState extends State<gridview_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Gridview Animation"),centerTitle: true),

      body:AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(20,
                (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: Duration(milliseconds: 375),
                columnCount: 2,
                child: Card(
                  color: Colors.lime[100],
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: Center(child: Text("Gridview...!",style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
