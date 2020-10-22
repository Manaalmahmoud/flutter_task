import 'package:flutter/material.dart';

Widget textRow({String text1, String text2}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text2),
        Text(text1),
      ],
    ),
  );
}
