import 'package:flutter/material.dart';

Row buildRow(
  String name,
  String name2,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          name,
          style: TextStyle(
            fontFamily: 'NovaFlat',
            fontSize: 15,
            color: Color(0xffdcb079),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          name2,
          style: TextStyle(
            fontSize: 15,
            color: Color(0xffdcb079),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
