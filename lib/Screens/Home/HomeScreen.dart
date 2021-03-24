import 'package:flutter/material.dart';
import 'package:vb_app/Screens/Ayarlar/AyarlarScreen.dart';
import 'package:vb_app/Screens/Home/components/body.dart';
import 'package:vb_app/Screens/Imsakiye/ImsakiyeScreen.dart';
import 'package:vb_app/Screens/Kible/KibleScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItemIndex;
  final List<Widget> _children = [
    Body(),
    ImsakiyeScreen(),
    KibleScreen(),
    AyarlarScreen(),
  ];
  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItemIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _children.elementAt(selectedItemIndex),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Container buildBottomNavigationBar() {
    return Container(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: BottomNavigationBar(
        currentIndex: selectedItemIndex,
        backgroundColor: Color(0x00ffffff),
        selectedItemColor: Color(0xffdcb079),
        unselectedItemColor: Color(0xffdcb079),
        type: BottomNavigationBarType.fixed,
        items: [
          buildBottomNavigationBarItem(
              "assets/images/btn1.png", 'Namaz Vakitler', 0),
          buildBottomNavigationBarItem("assets/images/btn2.png", 'Imsakiye', 1),
          buildBottomNavigationBarItem(
              "assets/images/btn3.png", 'Kible Yonu', 2),
          buildBottomNavigationBarItem(
              "assets/images/btn4.png", 'Ayarlar Satin Al', 3),
        ],
        onTap: (index) {
          setState(() {
            selectedItemIndex = index;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
    String imageAddress,
    String name,
    int index,
  ) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 5,
        ),
        child: Container(
          child: Column(
            children: [
              Divider(
                height: 4,
                color: index == selectedItemIndex
                    ? Color(0xffdcb079)
                    : Color(0x00ffffff),
              ),
              Container(
                child: ImageIcon(
                  AssetImage(imageAddress),
                  size: 65,
                ),
              ),
              Text(
                '$name',
                style: TextStyle(color: Color(0xffdcb079), fontSize: 9),
              ),
              Divider(
                height: 4,
                color: index == selectedItemIndex
                    ? Color(0xffdcb079)
                    : Color(0x00ffffff),
              )
            ],
          ),
        ),
      ),
      label: '',
    );
  }
}
