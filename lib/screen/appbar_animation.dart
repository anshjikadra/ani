import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';



class appbar_animation extends StatelessWidget {
  const appbar_animation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar:
        const ColorBuilder(Colors.transparent, Colors.blue),
        textColorAppBar: const ColorBuilder(Colors.white),
        appBarBuilder: _appBar,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/nature.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.36,
                ),
                height: 900,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
    return AppBar(
      backgroundColor: colorAnimated.background,
      elevation: 0,
      title: Text(
        "AppBar Animate",
        style: TextStyle(
          color: colorAnimated.color,
        ),
      ),
      leading: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: colorAnimated.color,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite,
            color: colorAnimated.color,
          ),
        ),
      ],
    );
  }
}