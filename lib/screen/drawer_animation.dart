
// IMAGE LINK : https://unsplash.com/photos/bOBM8CB4ZC4

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class drawer_animation extends StatefulWidget {
  @override
  State<drawer_animation> createState() => _drawer_animation();
}

class _drawer_animation extends State<drawer_animation> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  bool _bool = true;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _animation1 = Tween<double>(begin: 0, end: 20).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _bool = true;
        }
      });
    _animation2 = Tween<double>(begin: 0, end: .3).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    _animation3 = Tween<double>(begin: .9, end: 1).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastLinearToSlowEaseIn,
        reverseCurve: Curves.ease))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Drawer Animation ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),centerTitle: true,
        brightness: Brightness.dark,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.menu_rounded),
          splashColor: Colors.transparent,
          onPressed: () {
            if (_bool == true) {
              _animationController.forward();
            } else {
              _animationController.reverse();
            }
            _bool = false;
          },
        ),
      ),
      body: Stack(
        children: [
          // ALWAYS PLACE IT ON THE TOP OF EVERY WIDGET...
          BackgroundImage(),

          // EVERYTHING SHOULD BE HERE...
          SizedBox(
            height: _height,
            width: _width,
          ),

          // ALWAYS PLACE IT ON THE BOTTOM OF EVERY WIDGET...
          CustomNavigationDrawer(),
        ],
      ),
    );
  }

  Widget CustomNavigationDrawer() {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(
          sigmaY: _animation1.value, sigmaX: _animation1.value),
      child: Center(
        child: Container(
          height: _bool ? 0 : 500,
          width: _bool ? 0 : 500,
          color: Colors.transparent,
          child: Center(
            child: Transform.scale(
              scale: _animation3.value,
              child: Container(
                width: _width * .9,
                height: _width * 1.3,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(_animation2.value),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 35,
                      child: Icon(
                        Icons.person_outline_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [

                        MyTile(Icons.settings,'Setting', () { }),
                        MyTile(Icons.home,'Home', () { }),
                        MyTile(Icons.call_end_outlined,'Call', () { }),
                        MyTile(Icons.more_time,'Time', () { }),
                        MyTile(Icons.bookmark_added_outlined,'Book Mark', () { }),
                      ],
                    ),
                    SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget BackgroundImage() {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Image.asset(
        'assets/images/nature.png',
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget MyTile(
      IconData icon,
      String title,
      VoidCallback voidCallback,
      ) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.black.withOpacity(.08),
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          onTap: voidCallback,
          title: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
        divider()
      ],
    );
  }

  Widget divider() {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
    );
  }
}





