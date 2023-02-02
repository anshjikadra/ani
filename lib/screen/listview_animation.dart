import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class listview_animation extends StatefulWidget {
  const listview_animation({Key? key}) : super(key: key);

  @override
  State<listview_animation> createState() => _listview_animationState();
}

class _listview_animationState extends State<listview_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(title: Text("Listview Animation"),centerTitle: true),
      
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration:  Duration(milliseconds: 1000),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: Card(
                  color: Colors.lime[100],
                  margin: EdgeInsets.all(10),
                  child: FadeInAnimation(
                    child: Text("Good Morning....!",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
