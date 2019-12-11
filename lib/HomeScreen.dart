import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 75, right: 75, top: 50),
              child: Image.asset(
                'assets/images/BIBS_B_BLACK.png',
              ),
            ),
            SizedBox(
              width: 70.0,
              height: 70.0,
              child: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 136, 190, 140),
                child: Icon(Icons.healing),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ),
            Text(
              'B.IBS app',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      )
    );
  }
}