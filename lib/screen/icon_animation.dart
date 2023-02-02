import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';

class icon_animation extends StatefulWidget {
  const icon_animation({Key? key}) : super(key: key);

  @override
  State<icon_animation> createState() => _icon_animationState();
}

class _icon_animationState extends State<icon_animation> {


  AnimateIconController? controller = AnimateIconController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Icon Animation"),centerTitle: true),

      body: Center(
        child: AnimateIcons(
          startIcon: Icons.add,
          endIcon: Icons.close,
          controller: AnimateIconController(),
          size: 60.0,
          onStartIconPress: () {
            print("Clicked on Add Icon");
            return true;
          },
          onEndIconPress: () {
            print("Clicked on Close Icon");
            return true;
          },
          duration: Duration(milliseconds: 500),
          startIconColor: Colors.deepPurple,
          endIconColor: Colors.deepOrange,
          clockwise: false,
        ),
      ),
    );
  }


}
