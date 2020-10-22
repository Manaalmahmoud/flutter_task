import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'HomeScreen.dart';
import 'ThirdScreen.dart';
import 'SecondScreen.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 3;
  var pages = [
    ThirdScreen(),
    SecondScreen(),
    FirstScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.directions_car,
                size: 25,
              ),
              title: Text(
                'التأمين',
                style: TextStyle(fontSize: 15, fontFamily: 'Cairo'),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.directions_car,
                size: 25,
              ),
              title: Text(
                'التثمين',
                style: TextStyle(fontSize: 15, fontFamily: 'Cairo'),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.directions_car,
                size: 25,
              ),
              title: Text(
                'الخدمات',
                style: TextStyle(fontSize: 15, fontFamily: 'Cairo'),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.directions_car,
                size: 25,
              ),
              title: Text(
                'الوكالات',
                style: TextStyle(fontSize: 15, fontFamily: 'Cairo'),
              )),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: pages[_selectedIndex],
    );
  }
}
