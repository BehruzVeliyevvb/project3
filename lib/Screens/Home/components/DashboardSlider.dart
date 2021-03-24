import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> text = [
    'Sahura kalan Sure',
  ];
  List<String> text2 = ['15:30:47'];
  List<String> text3 = ['İftara kalan süre'];
  List<String> text4 = ['04:23:12'];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider.builder(
      itemCount: text.length,
      options: CarouselOptions(
        height: 160,
        autoPlay: true,
        aspectRatio: 2.0,
        autoPlayCurve: Curves.decelerate,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 1800),
        viewportFraction: 0.9,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 18),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      text[index],
                      style: TextStyle(
                        fontFamily: 'NovaFlat',
                        fontSize: 12,
                        color: Color(0xffdcb079),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      text3[index],
                      style: TextStyle(
                        fontFamily: 'NovaFlat',
                        fontSize: 12,
                        color: Color(0xffdcb079),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      text2[index],
                      style: TextStyle(
                        fontFamily: 'NovaFlat',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xffdcb079),
                      ),
                    ),
                    //  Divider(height: 2.0,color: Colors.green,),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      text4[index],
                      style: TextStyle(
                        fontFamily: 'NovaFlat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffdcb079),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
