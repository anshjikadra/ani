import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class waterflow_animation extends StatefulWidget {
  const waterflow_animation({Key? key}) : super(key: key);

  @override
  State<waterflow_animation> createState() => _waterflow_animationState();
}

class _waterflow_animationState extends State<waterflow_animation> with TickerProviderStateMixin {


  late AnimationController firstController;
  Animation<double>? firstAnimation;

  late AnimationController secondController;
  Animation<double>? secondAnimation;

  late AnimationController thirdController;
  Animation<double>? thirdAnimation;

  late AnimationController fourthController;
  Animation<double>? fourthAnimation;

  @override
  void initState() {
    super.initState();

    firstController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    firstAnimation = Tween<double>(begin: 1.9, end: 2.1).animate(
        CurvedAnimation(parent: firstController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          firstController!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          firstController!.forward();
        }
      });

    secondController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    secondAnimation = Tween<double>(begin: 1.8, end: 2.4).animate(
        CurvedAnimation(parent: secondController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          secondController!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          secondController!.forward();
        }
      });

    thirdController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    thirdAnimation = Tween<double>(begin: 1.8, end: 2.4).animate(
        CurvedAnimation(parent: thirdController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          thirdController!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          thirdController!.forward();
        }
      });

    fourthController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    fourthAnimation = Tween<double>(begin: 1.9, end: 2.1).animate(
        CurvedAnimation(parent: fourthController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          fourthController!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          fourthController!.forward();
        }
      });


    Timer(Duration(seconds: 2), () {
      firstController!.forward();
    });

    Timer(Duration(milliseconds: 1600), () {
      secondController!.forward();
    });

    Timer(Duration(milliseconds: 800), () {
      thirdController!.forward();
    });

    fourthController!.forward();
  }

  @override
  void dispose() {
    firstController?.dispose();
    secondController?.dispose();
    thirdController?.dispose();
    fourthController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Color(0xff2B2C56),
      body: Stack(
        children: [
          Center(
            child: Text('50 %',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    wordSpacing: 3,
                    color: Colors.white.withOpacity(.7)),
                textScaleFactor: 7),
          ),
          CustomPaint(
            painter: MyPainter(
              firstAnimation!.value,
              secondAnimation!.value,
              thirdAnimation!.value,
              fourthAnimation!.value,
            ),
            child: SizedBox(
              height: size.height,
              width: size.width,
            ),
          ),
        ],
      ),
    );
  }
}
   class MyPainter extends CustomPainter {
     final double firstValue;
     final double secondValue;
     final double thirdValue;
     final double fourthValue;

     MyPainter(this.firstValue,
         this.secondValue,
         this.thirdValue,
         this.fourthValue,);

     @override
     void paint(Canvas canvas, Size size) {
       var paint = Paint()
         ..color = Color(0xff3B6ABA).withOpacity(.8)
         ..style = PaintingStyle.fill;

       var path = Path()
         ..moveTo(0, size.height / firstValue)
         ..cubicTo(size.width * .4, size.height / secondValue, size.width * .7,
             size.height / thirdValue, size.width, size.height / fourthValue)
         ..lineTo(size.width, size.height)..lineTo(0, size.height);

       canvas.drawPath(path, paint);
     }

     @override
     bool shouldRepaint(covariant CustomPainter oldDelegate) {
       return true;
     }
   }

