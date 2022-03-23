import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'calender_page.dart';
import 'homepage2.dart';
import 'metro_page.dart';
import 'ooredoo_page.dart';
import 'profile_page.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;

  final screens = [
    MetroPage(),
    CalenderPage(),
    HomePage2(),
    OoredooPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {

    final items = <Widget>[
      Icon(Icons.train, size: 40,),
      Icon(Icons.web_sharp, size: 40,),
      Icon(Icons.home, size: 40,),
      Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
          child: Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 40,
            color: Colors.white,
          )),
      Icon(Icons.person, size: 40,),
    ];


    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black54,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        key: navigationKey,
        color: Colors.white60,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.transparent,
        height: 55,
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),

      ),
    );
  }
}

