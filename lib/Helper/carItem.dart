import 'package:flutter/material.dart';

Widget carItem(
    {String image, String name, String price, BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
