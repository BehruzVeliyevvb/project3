import 'package:flutter/material.dart';
import 'countryPicker.dart';
import 'rightText.dart';
import 'CenterDashboardSlider.dart';
import 'CenterDashboardSlider2.dart';
import 'dashboardSlider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _locationMessageCountry = "";
  String _locationMessageCity = "";
  String _locationMessageDistrict = "";
  void _currentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    final coordinates = Coordinates(position.latitude, position.longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    print(position);
    setState(() {
      _locationMessageCity = " ${first.adminArea}";
      _locationMessageCountry = " ${first.countryName}";
      _locationMessageDistrict = "${first.subAdminArea}";
    });
  }

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
        children: [
          Dashboard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 132,
                child: CenterDashboard2(),
              ),
              Container(
                width: 165,
                height: 115,
                child: Column(
                  children: [
                    buildRow('Ülke', '$_locationMessageCountry'),
                    buildRow('Şehir', '$_locationMessageCity'),
                    buildRow('İlçe', '$_locationMessageDistrict'),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        buildGestureDetector(),
                        SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(
                                color: Color(0xffdcb079),
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: (Text(
                                'Değiştir',
                                style: TextStyle(
                                  fontFamily: 'NovaFlat',
                                  color: Color(0xffdcb079),
                                ),
                              )),
                            ),
                          ),
                          onTap: () {
                            setState(() {
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
                                      child: CountryPicker(),
                                    );
                                  });
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          CenterDashboard(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 60),
            child: Column(
              children: [
                Text(
                  '“Eğer Allah’ı, Resulünü ve ahiret yurdunu istiyorsanız, bilin ki Allah içinizden iyilik yapanlara büyük bir mükafat hazırlamıştır.”',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    color: Color(0xffdcb079),
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildGestureDetector() {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
            color: Color(0xffdcb079),
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: (Text(
            'Gps ile bul',
            style: TextStyle(
              fontFamily: 'NovaFlat',
              color: Color(0xffdcb079),
            ),
          )),
        ),
      ),
      onTap: () {
        setState(() {
          _currentLocation();
          showGeneralDialog(
              context: context,
              barrierDismissible: true,
              barrierColor: Colors.black.withOpacity(0.5),
              barrierLabel: '',
              transitionDuration: Duration(milliseconds: 300),
              pageBuilder: (context, anim1, anim2) {},
              transitionBuilder: (context, anim1, anim2, child) {
                final curvedValue =
                    Curves.easeInOutBack.transform(anim1.value) - 1.0;
                return Transform(
                  transform:
                      Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
                  child: Gpsalert(),
                );
              });
        });
      },
    );
  }
}

class Gpsalert extends StatefulWidget {
  @override
  _GpsalertState createState() => _GpsalertState();
}

class _GpsalertState extends State<Gpsalert> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xffdcb079),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 200,
            decoration: (BoxDecoration(
              border: Border.all(
                color: Color(0xffdcb079),
              ),
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Eğer lokasyon  doğruysa lütfen onaylayın',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffdcb079),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      splashColor: Color(0xffdcb079),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xffdcb079),
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Tamam',
                        style: TextStyle(
                          color: Color(0xffdcb079),
                          fontFamily: 'NovaFlat',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            child: Container(
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 60,
                child: Icon(
                  Icons.location_on,
                  size: 50,
                  color: Color(0xffdcb079),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(60.0)),
                border: Border.all(
                  color: Color(0xffdcb079),
                  width: 4.0,
                ),
              ),
            ),
            top: -60,
          )
        ],
      ),
    );
  }
}
