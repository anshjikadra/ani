import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class searchbar_animation extends StatefulWidget {
  const searchbar_animation({Key? key}) : super(key: key);

  @override
  State<searchbar_animation> createState() => _searchbar_animationState();
}

class _searchbar_animationState extends State<searchbar_animation> {
  
  TextEditingController t1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Searchbar Animation"),centerTitle: true,),

      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(0, 169, 191, 1),
                  Colors.greenAccent,
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      'Searchbar Animation',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 85.0, left: 8.0, right: 8.0, bottom: 8.0),
                    child: Container(
                      height: 660.0,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.8),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SearchBarAnimation(
                              textEditingController: TextEditingController(),
                              isOriginalAnimation: true,
                              enableKeyboardFocus: true,
                              onExpansionComplete: () {
                                debugPrint(
                                    'do something just after searchbox is opened.');
                              },
                              onCollapseComplete: () {
                                debugPrint(
                                    'do something just after searchbox is closed.');
                              },
                              onPressButton: (isSearchBarOpens) {
                                debugPrint(
                                    'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
                              },
                              trailingWidget: const Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.black,
                              ),
                              secondaryButtonWidget: const Icon(
                                Icons.close,
                                size: 20,
                                color: Colors.black,
                              ),
                              buttonWidget: const Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
