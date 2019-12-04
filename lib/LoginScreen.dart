import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
               'Login Screen',
                style: Theme.of(context).textTheme.display1,
              ),
              Divider(height: 40, color: Colors.transparent,),
              FloatingActionButton(
                backgroundColor: Colors.deepPurpleAccent,
                child: Icon(Icons.done),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                }
              )
            ],
          )
        )
      ),
    );
  }
}