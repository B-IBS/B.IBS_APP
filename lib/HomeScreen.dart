import 'package:bibs/colors.dart';
import 'package:bibs/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddNewCrisis.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

     return Scaffold(
       body: Container(
         padding: EdgeInsets.only(left: 55, right: 40, top: 55),
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 0),
                 child: Row(
                   children: <Widget>[
                     Image.asset('assets/images/BIBS_B_BLACK.png', height: 50, width: 50,)
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 70, bottom: 150),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text('Hello,', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                     Divider(thickness: 0, height: 10, color: Colors.transparent,),
                     Text('How are you today ?', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                   ],
                 )
               ),
               ShortcutButton('Register a crisis: ', 'add-crisis', () { Navigator.push(context, MaterialPageRoute(builder: (_) => AddNewCrisis())); }, Icons.flag),
               ShortcutButton('Check for fodmaps: ', 'fodmap', () { Navigator.pushNamed(context, fodmapRoute); }, Icons.restaurant),
             ],
           ),
         )
       )
    );
  }
}

class ShortcutButton extends StatelessWidget {
  ShortcutButton(this.text, this.heroTag, this.btnFn, this.btnIcon);
  final String text;
  final String heroTag;
  final void Function() btnFn;
  final IconData btnIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FloatingActionButton(
              heroTag: heroTag,
              onPressed: btnFn,
              backgroundColor: bibsGreen,
              child: Icon(btnIcon)
            )
          )
        ],
      )
    );
  }
}