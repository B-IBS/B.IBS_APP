import 'package:bibs/colors.dart';
import 'package:bibs/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddNewCrisis.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

     return Scaffold(
       appBar: AppBar(
         leading: Padding(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), child: Image.asset('assets/images/BIBS_B_BLACK.png')),
         backgroundColor: Colors.transparent,
         elevation: 0,
       ),
       body: Container(
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Container(
                 padding: EdgeInsets.only(left: 40, right: 40, top: 70, bottom: 150),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text('Hello,', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                     Divider(thickness: 0, height: 20, color: Colors.transparent,),
                     Text('How are you today ?', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                   ],
                 )
               ),
               Container(
                 padding: EdgeInsets.only(left: 40),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text('Register a crisis: ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 20),
                       child: FloatingActionButton(
                         heroTag: 'add-crisis',
                         onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_) => AddNewCrisis())); },
                         backgroundColor: bibsGreen,
                         child: Icon(Icons.flag)
                       ),
                     )
                   ],
                 ),
               ),
               Divider(height: 40,),
               Container(
                 padding: EdgeInsets.only(left: 40),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
                     Text('Check for fodmaps: ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                     Padding(
                       padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                       child: FloatingActionButton(
                         heroTag: 'fodmap',
                         onPressed: () { Navigator.pushNamed(context, fodmapRoute); },
                         backgroundColor: bibsGreen,
                         child: Icon(Icons.restaurant)
                       ),
                     )
                   ],
                 ),
               )
             ],
           ),
         )
       )
    );
  }
}