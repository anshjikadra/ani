import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';



class corouselindicator_animation extends StatefulWidget {
  @override
  State<corouselindicator_animation> createState() => _corouselindicator_animation();
}

class _corouselindicator_animation extends State<corouselindicator_animation> {
  int pageIndex=0;

  List<Widget> _demo=[
    Container(height: 300,color: Colors.amber),
    Container(height: 300,color: Colors.red),
    Container(height: 300,color: Colors.blue),
    Container(height: 300,color: Colors.green),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("carousel_indicator"),centerTitle: true,),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: PageView(
              children: _demo,
              onPageChanged: (index){
                setState(() {
                  pageIndex=index;
                });
              },
            ),
          ),
          SizedBox(height: 40,),
          CarouselIndicator(
            count: _demo.length,
            index: pageIndex,
          ),
        ],
      ),
    );
  }
}