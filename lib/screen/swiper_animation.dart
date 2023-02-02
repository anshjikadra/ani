import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class swiper_animation extends StatefulWidget {
  const swiper_animation({Key? key}) : super(key: key);

  @override
  State<swiper_animation> createState() => _swiper_animationState();
}

class _swiper_animationState extends State<swiper_animation> {
  List<Container> cards = [
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        color: CupertinoColors.activeOrange,
      ),
      alignment: Alignment.center,
      child: const Text('1'),

    ),
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        color: CupertinoColors.activeGreen,
      ),
      alignment: Alignment.center,
      child: const Text('2'),

    ),
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: CupertinoColors.destructiveRed,
      ),
      alignment: Alignment.center,
      child: const Text('3'),

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Swiper Animation"),centerTitle: true,),
      body:Center(
        child: CupertinoPageScaffold(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width * 0.75,
            child: AppinioSwiper(
              cards: cards,
            ),
          ),
        ),
      )
    );
  }
}
