import 'package:ani/screen/first_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class splashscreen_animation extends StatefulWidget {
  const splashscreen_animation({Key? key}) : super(key: key);

  @override
  State<splashscreen_animation> createState() => _splashscreen_animationState();
}

class _splashscreen_animationState extends State<splashscreen_animation> {

  PageTransitionType pageTransitionType = PageTransitionType.topToBottom;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Splashscreen Animation',color: Colors.black,
        home: AnimatedSplashScreen(
            duration: 30,
            splash: Icons.home,
            nextScreen: first_page(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: pageTransitionType,
            backgroundColor: Colors.deepOrangeAccent));
  }
}
