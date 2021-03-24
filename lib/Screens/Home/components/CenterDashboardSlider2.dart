import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CenterDashboard2 extends StatefulWidget {
  @override
  _CenterDashboard2State createState() => _CenterDashboard2State();
}

class _CenterDashboard2State extends State<CenterDashboard2> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  PageController controller;

  @override
  void initState() {
    controller = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    Size _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        pageSnapping: true,
        itemBuilder: (context, index) {
          return Row(
            children: [
              RichText(
                text: TextSpan(
                  text: '28 Rebabulahir 1442',
                  style: TextStyle(
                    color: Color(0xffdcb079),
                    fontSize: 7,
                    fontFamily: 'NovaFlat',
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' \n 13',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color(0xffdcb079),
                            fontSize: 40)),
                    TextSpan(
                        text: '\n Aralık',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffdcb079),
                            fontSize: 18)),
                    TextSpan(
                        text: '\n   Pazar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffdcb079),
                            fontSize: 14)),
                  ],
                ),
              ),
              VerticalDivider(
                width: 5,
                color: Color(0xffdcb079),
                indent: 28,
              )
            ],
          );
          //   Column(
          //   children: List.generate(topSlider.length, (index) {
          //     return topSlider[index];
          //   }),
          // );
        },
      ),
    );
  }
}
