import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';

class slider_animation extends StatefulWidget {
  const slider_animation({Key? key}) : super(key: key);

  @override
  State<slider_animation> createState() => _slider_animationState();
}

class _slider_animationState extends State<slider_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(title: Text("Slider Animation"),centerTitle: true,),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ActionSlider.standard(
              child: const Text('Slide to confirm'),
              action: (controller) async {
                controller.loading(); //starts loading animation
                await Future.delayed(const Duration(seconds: 2));
                controller.success();//starts success animation
              },
          ),
        ),
      ),
    );
  }
}
