import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

class CenterDashboard extends StatefulWidget {
  @override
  _CenterDashboardState createState() => _CenterDashboardState();
}

class _CenterDashboardState extends State<CenterDashboard> {
  CarouselController controller;
  List<String> text = [
    'İmsak',
    'GÜneş',
    'Öğle',
    'İkindi',
    'Akşam',
    'Yatsı',
    '',
  ];
  List<String> text2 = [
    '06:34',
    '08:05',
    '12:57',
    '17:38',
    '19:04',
    '22:00',
    '',
  ];
  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider.builder(
      itemCount: text.length,
      carouselController: controller,
      options: CarouselOptions(
        height: 60,
        autoPlay: false,
        aspectRatio: 2.0,
        autoPlayCurve: Curves.decelerate,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 1800),
        viewportFraction: 1.0,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(
              height: 5,
              indent: 50,
              endIndent: 50,
              color: Color(0xffddaf7d),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  centerDashboardColumn(text[0], text2[0]),
                  SizedBox(
                    width: 4,
                  ),
                  centerDashboardColumn(text[1], text2[1]),
                  SizedBox(
                    width: 4,
                  ),
                  centerDashboardColumn(text[2], text2[2]),
                  SizedBox(
                    width: 4,
                  ),
                  centerDashboardColumn(text[3], text2[3]),
                  SizedBox(
                    width: 4,
                  ),
                  centerDashboardColumn(text[4], text2[4]),
                  SizedBox(
                    width: 4,
                  ),
                  centerDashboardColumn(text[5], text2[5]),
                ],
              ),
            ),
            Divider(
              height: 8,
              indent: 50,
              endIndent: 50,
              color: Colors.white,
            ),
          ],
        );
      },
    ));
  }

  Column centerDashboardColumn(String Text1, String Text2) {
    return Column(
      children: [
        Text(
          Text1,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          Text2,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontFamily: 'NovaFlat',
          ),
        )
      ],
    );
  }
}
