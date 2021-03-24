import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vb_app/Screens/Ayarlar/AyarlarScreen.dart';

class ShowMenu extends StatefulWidget {
  @override
  _ShowMenuState createState() => _ShowMenuState();
}

class _ShowMenuState extends State<ShowMenu> {
  int selected;
  List<String> items = [
    "15 dk",
    "10 dk",
    "5 dk",
    "0 dk",
  ];

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
              child: CupertinoPicker(
                itemExtent: 55,
                diameterRatio: 5,
                onSelectedItemChanged: (index) {
                  setState(() {
                    selected = index;
                  });
                },
                children: List.generate(
                  items.length,
                  (index) {
                    return Center(
                      child: GestureDetector(
                        child: Text(
                          "${items[index]}",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffdcb079),
                            fontFamily: 'NovaFlat',
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )),
          Positioned(
            child: Container(
              width: 300,
              child: Row(
                children: [
                  Container(
                    child: GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 15,
                        child: Icon(
                          Icons.backspace_outlined,
                          size: 15,
                          color: Color(0xffdcb079),
                        ),
                      ),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      border: Border.all(
                        color: Color(0xffdcb079),
                        width: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 85,
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: Icon(
                        Icons.watch_later,
                        size: 25,
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
                  SizedBox(
                    width: 75,
                  ),
                  Container(
                    child: GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 15,
                        child: Icon(
                          Icons.check,
                          size: 20,
                          color: Color(0xffdcb079),
                        ),
                      ),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                      border: Border.all(
                        color: Color(0xffdcb079),
                        width: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            top: -30,
          )
        ],
      ),
    );
  }
}
