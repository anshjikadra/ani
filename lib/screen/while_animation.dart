import 'package:flutter/material.dart';

class while_animation extends StatefulWidget {
  const while_animation({Key? key}) : super(key: key);

  @override
  State<while_animation> createState() => _while_animationState();
}

class _while_animationState extends State<while_animation> with TickerProviderStateMixin{


  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("While Animation"),centerTitle: true,),

      body:Center(
        child: AnimatedBuilder(
        animation: _controller,
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.green,
          child: const Center(
            child: Text('Whee!'),
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 ,
            child: child,
          );
        },
    ),
      )
    );
  }
}




// import 'dart:math' as math;
//
// import 'package:flutter/material.dart';
//
// class while_animation extends while_animation {
//   const while_animation({super.key});
//
//   @override
//   State<while_animation> createState() => _while_animation();
// }
//
// /// AnimationControllers can be created with `vsync: this` because of
// /// TickerProviderStateMixin.
// class _while_animation extends State<while_animation> with TickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//     duration: const Duration(seconds: 10),
//     vsync: this,
//   )..repeat();
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _controller,
//       child: Container(
//         width: 200.0,
//         height: 200.0,
//         color: Colors.green,
//         child: const Center(
//           child: Text('Whee!'),
//         ),
//       ),
//       builder: (BuildContext context, Widget? child) {
//         return Transform.rotate(
//           angle: _controller.value * 2.0 * math.pi,
//           child: child,
//         );
//       },
//     );
//   }
// }
