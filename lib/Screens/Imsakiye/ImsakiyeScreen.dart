import 'package:flutter/material.dart';

class ImsakiyeScreen extends StatefulWidget {
  @override
  _ImsakiyeScreenState createState() => _ImsakiyeScreenState();
}

class _ImsakiyeScreenState extends State<ImsakiyeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fon2.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 250,
                    height: 150,
                    child: Image.asset(
                      ('assets/images/hilal.png'),
                      scale: 1.0,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Stack(children: [
                        Container(
                          height: 100,
                          width: 400,
                          child: (Image.asset(
                            ('assets/images/bayram_back.png'),
                            color: Color.fromRGBO(255, 255, 255, 0.5),
                            colorBlendMode: BlendMode.modulate,
                            scale: 1.5,
                          )),
                        ),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 40, horizontal: 90),
                          child: Row(
                            children: [
                              Text(
                                'Sakarya',
                                style: TextStyle(
                                  fontFamily: 'NovaFlat',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffdcb079),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'İmsakiyesi',
                                style: TextStyle(
                                  fontFamily: 'NovaFlat',
                                  fontSize: 18,
                                  color: Color(0xffdcb079),
                                ),
                              )
                            ],
                          ),
                        ))
                      ]),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Tarih',
                  style: TextStyle(
                    fontFamily: 'NovaFlat',
                    color: Color(0xffdcb079),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'İmsak',
                  style: TextStyle(
                    fontFamily: 'NovaFlat',
                    color: Color(0xffdcb079),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Güneş',
                  style: TextStyle(
                    fontFamily: 'NovaFlat',
                    color: Color(0xffdcb079),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Öğle',
                  style: TextStyle(
                    fontFamily: 'NovaFlat',
                    color: Color(0xffdcb079),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'İkindi',
                  style: TextStyle(
                    fontFamily: 'NovaFlat',
                    color: Color(0xffdcb079),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Akşam',
                  style: TextStyle(
                    fontFamily: 'NovaFlat',
                    color: Color(0xffdcb079),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Yatsı',
                  style: TextStyle(
                    fontFamily: 'NovaFlat',
                    color: Color(0xffdcb079),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Hicri',
                  style: TextStyle(
                    fontFamily: 'NovaFlat',
                    color: Color(0xffdcb079),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
