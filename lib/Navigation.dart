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
    ModulesScreen(),
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
          unselectedItemColor: Color.fromARGB(255, 136, 190, 140),
          selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Account'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              title: Text('Today'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.show_chart),
              title: Text('Analysis'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              title: Text('Modules'),
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