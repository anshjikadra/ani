import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';




class vartical_card_animation extends StatefulWidget {
  @override
  State<vartical_card_animation> createState() => _vartical_card_animation();
}

class _vartical_card_animation extends State<vartical_card_animation> {
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "RED",
      "YELLOW",
      "BLACK",
      "CYAN",
      "BLUE",
      "GREY",
    ];

    final List<Widget> images = [
      Container(
        // color: Colors.red,
        child: Image.network("https://eartheclipse.com/wp-content/uploads/2016/08/lake-in-Guatemala.jpg",fit: BoxFit.cover,),

      ),
      Container(
        // color: Colors.yellow,
        child: Image.network("https://cdn.theculturetrip.com/wp-content/uploads/2021/05/eg0t7m-1-e1622546303829-650x365.jpg",fit: BoxFit.cover,),
      ),
      Container(
        // color: Colors.black,
        child: Image.network("https://image.winudf.com/v2/image1/Y29tLm5hdHVyYWxpbWFnZWhkd2FsbHBhcGVyLnJ5cnNfc2NyZWVuXzBfMTU0MjM3MDgxNl8wODU/screen-0.jpg?fakeurl=1&type=.webp",fit: BoxFit.cover,),
      ),
      Container(
        // color: Colors.cyan,
        child: Image.network("https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg",fit: BoxFit.cover,),
      ),
      Container(
        // color: Colors.blue,
        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1280px-24701-nature-natural-beauty.jpg",fit: BoxFit.cover,),
      ),
      Container(
        // color: Colors.grey,
        child: Image.asset("assets/images/nature.png",fit: BoxFit.cover,),
      ),
    ];
    return Scaffold(


      appBar: AppBar(title: Text("Card Animation"),centerTitle: true,),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  textStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {},
                  align: ALIGN.CENTER,
                  onSelectedItem: (index) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}