import 'package:bibs/Navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModulesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text('Modules', style: Theme.of(context).textTheme.headline,),
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  leading: Text('FODMAP'),
                  title: Text('Track the fodmap in your food to avoid those who will trigger your symptoms.'),
                  onTap: () { changeScreen(context, '/modules/fodmap'); },
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  void changeScreen(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}