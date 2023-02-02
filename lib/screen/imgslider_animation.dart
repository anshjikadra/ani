import 'package:flutter/material.dart';
import 'package:mj_image_slider/mj_image_slider.dart';
import 'package:mj_image_slider/mj_options.dart';




class imgslider_animation extends StatefulWidget {
  const imgslider_animation ({Key? key}) : super(key: key);



  @override
  State<imgslider_animation> createState() => _imgslider_animation();
}

class _imgslider_animation extends State<imgslider_animation> {
  List<String> images = [
    "assets/images/images_1.jpg",
    "assets/images/images_2.jpg",
    "assets/images/images_3.jpg",
    "assets/images/images_4.jpg",
  ];
  List<String> networkImages = [
    "https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80",
    "https://images.unsplash.com/photo-1546587348-d12660c30c50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80",
    "https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1525127752301-99b0b6379811?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("ImageSlider Animation"),centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0,20,0,0),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              MJImageSlider(
                options: MjOptions(onPageChanged: (i) {}, autoPlayCurve: Curves.easeInExpo, height: 200, width: 400, viewportFraction: 0.8),
                widgets: [
                  ...networkImages
                      .map((e) => Image(image: NetworkImage(e)))
                      .toList()
                ],
              ),

            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}