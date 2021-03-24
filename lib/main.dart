import 'package:flutter/material.dart';
import 'Screens/Home/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZdcApp',
      home: HomeScreen(),
    );
  }
}
