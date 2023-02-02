import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class bottom_navigationbar_animation extends StatefulWidget {
  const bottom_navigationbar_animation({Key? key}) : super(key: key);

  @override
  State<bottom_navigationbar_animation> createState() => _bottom_navigationbar_animationState();
}

class _bottom_navigationbar_animationState extends State<bottom_navigationbar_animation> {


  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];
  var _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: Text("Bottom Navigationbar Animation"),centerTitle: true),

      floatingActionButton: FloatingActionButton(backgroundColor: Colors.red,child: Icon(Icons.linked_camera,color: Colors.black),onPressed: () {  },
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.red[100],
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),

    );
  }
}
