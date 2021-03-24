import 'package:flutter/material.dart';
import 'dart:math' show pi;
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'LoadingIndicator.dart';

class QiblahCompassk extends StatelessWidget {
  final _needle = Image.asset(
    'assets/images/compas_arrow_right.png',
    height: 190,
    alignment: Alignment.center,
  );
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FlutterQiblah.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return LoadingIndicator();
        if (snapshot.hasError)
          return Center(
            child: Text("Error: ${snapshot.error.toString()}"),
          );
        final qiblahDirection = snapshot.data;
        double derece = qiblahDirection.offset - qiblahDirection.direction;
        return Container(
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Column(
                    children: [
                      Text(
                        'Kıble Açısı',
                        style: TextStyle(
                          fontFamily: 'NovaFlat',
                          color: Color(0xffdcb079),
                        ),
                      ),
                      Text(
                        "${qiblahDirection.offset.toStringAsFixed(0)}°",
                        style: TextStyle(
                          fontFamily: 'Caveat',
                          color: Color(0xffdcb079),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            width: 60,
                            height: 60,
                            child: Image.asset('assets/images/kabaa.png')),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${derece.toStringAsFixed(0)}°",
                          style: TextStyle(
                            fontFamily: 'Caveat',
                            color: Color(0xffdcb079),
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Şu anki açı',
                          style: TextStyle(
                            color: Color(0xffdcb079),
                            fontFamily: 'NovaFlat',
                          ),
                        ),
                        Text(
                          "${qiblahDirection.direction.toStringAsFixed(0)}°",
                          style: TextStyle(
                            fontFamily: 'Caveat',
                            color: Color(0xffdcb079),
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 240,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/compas.png'),
                      ),
                    ),
                  ),
                  Center(
                    child: Transform.rotate(
                      angle: ((qiblahDirection.qiblah ?? 0) * (pi / 180) * -1),
                      alignment: Alignment.center,
                      child: _needle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
