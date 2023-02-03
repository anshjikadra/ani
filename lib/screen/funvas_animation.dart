import 'package:flutter/material.dart';
import 'package:funvas/funvas.dart';

class funvas_animation extends StatefulWidget {
  const funvas_animation({Key? key}) : super(key: key);

  @override
  State<funvas_animation> createState() => _funvas_animationState();
}

class _funvas_animationState extends State<funvas_animation> {

  // static final examples = <Funvas>[
  //
  //   WaveFunvas(),
  //   OrbsFunvas(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      appBar: AppBar(title: Text("Funvas Animation"),centerTitle: true,),

      body: Center(
        child: SizedBox(
          height:420,
          width: 420,
          child: FunvasContainer(
            funvas:OrbsFunvas(),
          ),
        ),
      ),

    );
  }


}
class WaveFunvas extends Funvas {
  @override
  void u(double t) {
    c.scale(x.width / 1920, x.height / 1080);

    for (var i = 0; i < 64; i++) {
      c.drawRect(
        Rect.fromLTWH(
          i * 30.0,
          400 + C(4 * t + (i * 3)) * 100,
          27,
          200,
        ),
        Paint(),
      );
    }
  }
}
class OrbsFunvas extends Funvas {
  @override
  void u(double t) {
    c.scale(x.width / 1920, x.height / 1080);

    final v = t + 400;
    for (var q = 255; q > 0; q--) {
      final paint = Paint()..color = R(q, q, q);
      c.drawCircle(
          Offset(
            1920 / 2 + C(v - q) * (v + q),
            540 + S(v - q) * (v - q),
          ),
          40,
          paint);
    }
  }
}
