import 'package:flutter/material.dart';
import 'Helper/carItem.dart';
import 'Helper/logoItem.dart';
import 'Helper/textRow.dart';
import 'Helper/typeItem.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/audi.jpg'), fit: BoxFit.cover)),
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  top: 7,
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 7,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 5,
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        '12',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          textRow(text1: 'تصفح حسب نوع السيارة', text2: ''),
          Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  typeItem(image: 'assets/suv.jpg', text: 'SUV'),
                  typeItem(image: 'assets/suv.jpg', text: 'Sedan'),
                  typeItem(image: 'assets/suv.jpg', text: 'Wagon'),
                  typeItem(image: 'assets/suv.jpg', text: 'Hatchback'),
                  typeItem(image: 'assets/suv.jpg', text: 'SUV'),
                ],
              )),
          textRow(text1: 'تصفح حسب الماركة', text2: 'الكل'),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                logoItem(image: 'assets/bmw.png'),
                logoItem(image: 'assets/ford.png'),
                logoItem(image: 'assets/nissan.png'),
                logoItem(image: 'assets/chevo.jpg'),
                logoItem(image: 'assets/bmw.png'),
                logoItem(image: 'assets/ford.png'),
              ],
            ),
          ),
          textRow(text1: 'جديد الوكالات', text2: 'الكل'),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                carItem(
                    context: context,
                    image: 'assets/audi.jpg',
                    price: '12000اسعار تبدأ من ',
                    name: 'Audi'),
                carItem(
                    context: context,
                    image: 'assets/audi.jpg',
                    price: '12000اسعار تبدأ من ',
                    name: 'Audi'),
              ],
            ),
          ),
          textRow(text1: 'فيديو', text2: 'الكل'),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                carItem(
                    context: context,
                    image: 'assets/audi.jpg',
                    price: '12000اسعار تبدأ من ',
                    name: 'Audi'),
                carItem(
                    context: context,
                    image: 'assets/audi.jpg',
                    price: '12000اسعار تبدأ من ',
                    name: 'Audi'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
