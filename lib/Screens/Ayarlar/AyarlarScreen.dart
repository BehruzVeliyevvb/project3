import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:vb_app/Screens/Ayarlar/components/voicechange.dart';
import 'components/alertchange.dart';

class AyarlarScreen extends StatefulWidget {
  int selected;
  List items;
  AyarlarScreen({
    this.items,
    this.selected,
  });
  @override
  _AyarlarScreenState createState() => _AyarlarScreenState();
}

class _AyarlarScreenState extends State<AyarlarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fonimages.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    buttonGestureDet(100, 35, 'Dil Değiştir'),
                    Text(
                      'Türkçe',
                      style: TextStyle(
                        fontFamily: 'NovaFlat',
                        color: Color(0xffddaf7d),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Bildirimler',
                      style: TextStyle(
                        fontFamily: 'NovaFlat',
                        color: Color(0xffddaf7d),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 35,
                      width: 120,
                      child: LiteRollingSwitch(
                        value: true,
                        textOn: "Açık",
                        textOff: "Kapalı",
                        colorOn: Color(0xffddaf7d),
                        colorOff: Colors.black,
                        iconOn: Icons.done,
                        iconOff: Icons.alarm_off,
                        textSize: 18.0,
                        onChanged: (bool position) {
                          print(" $position");
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 260,
                  child: Divider(
                    color: Color(0xffddaf7d),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Bildirim Sesi',
                      style: TextStyle(
                        fontFamily: 'NovaFlat',
                        color: Color(0xffddaf7d),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 105,
                    ),
                    Text(
                      'Cam sesi',
                      style: TextStyle(
                          fontFamily: 'NovaFlat',
                          color: Color(0xffddaf7d),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 120,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xffdcb079),
                            border: Border.all(color: Colors.black, width: 3),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                              child: Text(
                            'Sesi Değiştir',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'NovaFlat',
                            ),
                          )),
                        ),
                        onTap: () {
                          showGeneralDialog(
                              context: context,
                              barrierDismissible: true,
                              barrierColor: Colors.black.withOpacity(0.5),
                              barrierLabel: '',
                              transitionDuration: Duration(milliseconds: 300),
                              pageBuilder: (context, anim1, anim2) {},
                              transitionBuilder:
                                  (context, anim1, anim2, child) {
                                final curvedValue = Curves.easeInOutBack
                                        .transform(anim1.value) -
                                    1.0;
                                return Transform(
                                  transform: Matrix4.translationValues(
                                      0.0, curvedValue * 200, 0.0),
                                  child: VoiceMenu(),
                                );
                              });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 250,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Alert Time',
                              style: TextStyle(
                                fontFamily: 'NovaFlat',
                                fontWeight: FontWeight.bold,
                                color: Color(0xffddaf7d),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                '15 dk',
                                style: TextStyle(
                                    fontFamily: 'NovaFlat',
                                    color: Color(0xffddaf7d),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            child: Container(
                              width: 122,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xffdcb079),
                                border:
                                    Border.all(color: Colors.black, width: 3),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Center(
                                  child: Text(
                                'Zamanı Değiştir',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'NovaFlat',
                                ),
                              )),
                            ),
                            onTap: () {
                              showGeneralDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  barrierLabel: '',
                                  transitionDuration:
                                      Duration(milliseconds: 300),
                                  pageBuilder: (context, anim1, anim2) {},
                                  transitionBuilder:
                                      (context, anim1, anim2, child) {
                                    final curvedValue = Curves.easeInOutBack
                                            .transform(anim1.value) -
                                        1.0;
                                    return Transform(
                                      transform: Matrix4.translationValues(
                                          0.0, curvedValue * 200, 0.0),
                                      child: ShowMenu(),
                                    );
                                  });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 260,
                  child: Divider(
                    color: Color(0xffddaf7d),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonGestureDet(200, 40, 'Reklamları Kaldır(₺18.99)'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonGestureDet(180, 40, 'Satın almaları geri yükle'),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 250,
            child: Text(
              'Tüm namaz vakit bilgileri Diyanet veritabanı kullanılarak olusturulmustur',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                color: Color(0xffddaf7d),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buttonGestureDet(
    double genislik,
    double uzunluk,
    String text,
  ) {
    return GestureDetector(
      child: Container(
        width: genislik,
        height: uzunluk,
        decoration: BoxDecoration(
          color: Color(0xffdcb079),
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'NovaFlat',
          ),
        )),
      ),
    );
  }
}
