import 'package:ani/screen/Wavytext_animation.dart';
import 'package:ani/screen/animeted_switch.dart';
import 'package:ani/screen/background_animation.dart';
import 'package:ani/screen/bottom_navigationbar_animation.dart';
import 'package:ani/screen/bouncing_animation.dart';
import 'package:ani/screen/button_animation.dart';
import 'package:ani/screen/card_animation.dart';
import 'package:ani/screen/drawer_animation.dart';
import 'package:ani/screen/gravity_animation.dart';
import 'package:ani/screen/gridview_animation.dart';
import 'package:ani/screen/icon_animation.dart';
import 'package:ani/screen/listview_animation.dart';
import 'package:ani/screen/loading_animation.dart';
import 'package:ani/screen/loop_animation.dart';
import 'package:ani/screen/moon_animation.dart';
import 'package:ani/screen/pagetransition_animation.dart';
import 'package:ani/screen/physics_animation.dart';
import 'package:ani/screen/positioned_animation.dart';
import 'package:ani/screen/splashscreen_animation.dart';
import 'package:ani/screen/text_animation.dart';
import 'package:ani/screen/waterflow_animation.dart';
import 'package:ani/screen/zoomtap_animation.dart';
import 'package:flutter/material.dart';


class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {

  List<String> animation_name = [
    "Text Animations",
    "Glow Animations",
    "Button Animations",
    "Listview Animations",
    "Gridview Animations",
    "Background Animations",
    "Icon Animations",
    "Bottom Navigation Bar",
    "Splashscreen Animation",
    "Waterflow Animation",
    "Animeted Switch",
    "Zoomtap Animation",
    "Page Transition",
    "Gravity Animation",
    "Card Animation",
    "Spinning Eearth",
    "Drawer Animation",
    "Bouncing Animation",
    "Loading Animation",
    "Physics Animation",
    "Wavytext Animation"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Demo",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: animation_name.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            shadowColor: Colors.red,
           borderOnForeground: true,
              child: ListTile(
                onTap: () {
                 index == 0 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return text_animation();},)):
                 index == 1 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return loop_animation();},)):
                 index == 2 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return button_animation();},)):
                 index == 3 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return listview_animation();},)):
                 index == 4 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return gridview_animation();},)):
                 index == 5 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return background_animation();},)):
                 index == 6 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return icon_animation();},)):
                 index == 7 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return bottom_navigationbar_animation();},)):
                 index == 8 ?  Navigator.push(context, MaterialPageRoute(builder: (context) {return  splashscreen_animation();},)):
                 index == 9 ?  Navigator.push(context, MaterialPageRoute(builder: (context) {return waterflow_animation();},)):
                 index == 10 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return animeted_switch();},)):
                 index == 11 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return zoomtap_animation();},)):
                 index == 12 ?  Navigator.push(context,MaterialPageRoute(builder: (context) {return MyCustomWidget();},)):
                  index == 13 ? Navigator.push(context,MaterialPageRoute(builder: (context) {return gravity_animation();},)):
                  index == 14 ?Navigator.push(context,MaterialPageRoute(builder: (context) {return cardanimation();},)):
                  index == 15? Navigator.push(context,MaterialPageRoute(builder: (context) {return moon_animation();},)):
                 index == 16 ?Navigator.push(context,MaterialPageRoute(builder: (context) {return drawer_animation();},)):
                 index == 17 ?Navigator.push(context,MaterialPageRoute(builder: (context) {return bouncing_animation();},)):
                 index == 18?Navigator.push(context,MaterialPageRoute(builder: (context) {return loading_animation();},)):
                index == 19 ? Navigator.push(context,MaterialPageRoute(builder: (context) {return physics_animation();},)):
                Navigator.push(context,MaterialPageRoute(builder: (context) {return wavytext_animation();},));
                },
            title: Text("${animation_name[index]}",style: TextStyle(color: Colors.white)),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
          ),elevation: 1.5,color: Colors.indigo,);
        },
      ),
    );
  }
}
