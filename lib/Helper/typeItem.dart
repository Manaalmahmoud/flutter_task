import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget typeItem({String image, String text}) {
  return Row(
    children: [
      Column(
        children: [
          Container(
            width: 70,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                )),
          ),
          Text(
            text,
          )
        ],
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}
