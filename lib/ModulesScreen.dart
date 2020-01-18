import 'package:bibs/routes.dart';
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
                moduleListTile('FODMAP', 'Track the fodmap.', () { changeScreen(context, fodmapRoute); }),
                moduleListTile('Food Checker', 'Search and save your food.', () { changeScreen(context, foodCheckerRoute); }),
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

  Widget moduleListTile(String leading, String title, void Function() onTap) {
    return ListTile(
      leading: Text(leading),
      title: Text(title),
      onTap: onTap,
    );
  }
}