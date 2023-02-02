import 'package:flutter/material.dart';

class boxtransition_animation extends StatefulWidget {
  const boxtransition_animation({Key? key}) : super(key: key);

  @override
  State<boxtransition_animation> createState() => _boxtransition_animationState();
}

class _boxtransition_animationState extends State<boxtransition_animation> with TickerProviderStateMixin{

  late AnimationController _controller;

  bool _first = true;

  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(title: Text("Boxtransition Animation"),centerTitle: true,),


      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            DecoratedBoxTransition(
              position: DecorationPosition.background,
              decoration: decorationTween.animate(_controller),
              child: Container(
                child: Container(
                  width: 200,
                  height: 200,
                  padding: EdgeInsets.all(20),
                  child: FlutterLogo(),
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
              onPressed: () {
                if (_first) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
                _first = !_first;
              },
              child: Text(
                "Click Me!",
              ),
            ),
            // FlutterLogo(),
          ],
        ),
      ),
    );
  }

  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        color: const Color(0xFF000000),
        style: BorderStyle.solid,
        width: 4.0,
      ),
      borderRadius: BorderRadius.zero,
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66000000),
          blurRadius: 10.0,
          spreadRadius: 4.0,
        )
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFF000000),
      border: Border.all(
        color: const Color(0xFF202020),
        style: BorderStyle.solid,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(10.0),
      shape: BoxShape.rectangle,
      // No shadow.
    ),
  );
}
