import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class like_animation extends StatefulWidget {
  const like_animation({Key? key}) : super(key: key);

  @override
  State<like_animation> createState() => _like_animationState();
}

class _like_animationState extends State<like_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Like Animation"),centerTitle: true,),
      body: Center(
        child: LikeButton(
          size: 100,
          circleColor:
          CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Colors.red,
            dotSecondaryColor: Colors.red,
          ),
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.heart_broken_rounded,
              color: isLiked ? Colors.red : Colors.grey,
              size: 100,
            );
          },
          likeCount:0,
          // countBuilder: (int count, bool isLiked, String text) {
          //   var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
          //   Widget result;
          //   if (count == 0) {
          //     result = Text(
          //       "love",
          //       style: TextStyle(color: color),
          //     );
          //   } else
          //     result = Text(
          //       text,
          //       style: TextStyle(color: color),
          //     );
          //   return result;
          // },
        ),
      ),
    );
  }
}
