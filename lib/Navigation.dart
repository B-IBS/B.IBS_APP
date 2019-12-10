import 'package:bibs/AccountScreen.dart';
import 'package:bibs/HomeScreen.dart';
import 'package:bibs/ModulesScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  @override
  NavigationScreenState createState() => NavigationScreenState();
}

class NavigationScreenState extends State<NavigationScreen> {
  var currentIndex = 0;
  var _children = [
    HomeScreen(),
    ModulesScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: _children[currentIndex]
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Modules'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account'),
            )
          ],
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}