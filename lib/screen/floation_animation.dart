import 'package:flutter/material.dart';
import 'package:speed_dial_fab/speed_dial_fab.dart';

class floation_animation extends StatefulWidget {
  const floation_animation({Key? key}) : super(key: key);

  @override
  State<floation_animation> createState() => _floation_animationState();
}

class _floation_animationState extends State<floation_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[200],

      appBar: AppBar(title: Text("Floating Button Animation"),centerTitle: true,),
      floatingActionButton: SpeedDialFabWidget(
        secondaryIconsList: [
          Icons.content_copy,
          Icons.content_paste,
          Icons.content_cut,
        ],
        secondaryIconsText: [
          "copy",
          "paste",
          "cut",
        ],
        secondaryIconsOnPress: [
              () => {},
              () => {},
              () => {},
        ],
        secondaryBackgroundColor: Colors.grey,
        secondaryForegroundColor: Colors.black,
        primaryBackgroundColor: Colors.blue,
        primaryForegroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "Floating Button Animation",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),


    );
  }
}
