import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';



class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  int index = 0;

  final screens = [


  ];


  @override

  Widget build(BuildContext context) {
    final items = <Widget>[

      const Icon(Icons.home,size: 25,),
      const Icon(Icons.favorite,size: 25,),
      const Icon(Icons.settings,size: 25,),
    ];

    return SafeArea(
      top: false,
      child: Scaffold(
        body: screens[index],
        extendBody: true,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(

              iconTheme: const IconThemeData(color:Color(0xff303030),)
          ),
          child: CurvedNavigationBar(
              backgroundColor: Colors.white54,


              key: navigationKey,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 300),
              color: Color(0xff555555),
              buttonBackgroundColor: Color(0xff303030),

              height: 60 ,
              index: index,
              onTap: (index) => setState(() => this.index = index),


              items: items),
        ),


      ),
    );
  }
}