import 'package:flutter/material.dart';

Widget logoItem({String image}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5, bottom: 3),
    child: Row(
      children: [
        Container(
          width: 60,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
              )),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    ),
  );
}
