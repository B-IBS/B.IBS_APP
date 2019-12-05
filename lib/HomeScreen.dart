import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Home Screen',
                  style: Theme.of(context).textTheme.display1,
                ),
                FloatingActionButton(
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Icon(Icons.done),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    }
                )
              ],
            ),
          )
        ),
      )
    );
  }
}
