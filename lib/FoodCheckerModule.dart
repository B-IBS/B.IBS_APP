import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'fodmap.dart';
import 'dart:math';

class FoodCheckerModule extends StatelessWidget {
  @override
  var history = [
    {'title': "Pates", 'desc': 'Hier à 21h31', 'score': 20},
    {'title': "Lasagne", 'desc': 'Hier à 13h17', 'score': 40},
    {'title': "Steak frite", 'desc': 'Il y a 1 jour à 20h12', 'score': 80},
    {'title': "Riz cantonais", 'desc': 'Il y a 1 jour à 11h55', 'score': 95},
    {'title': "Couscous", 'desc': 'Il y a 2 jours à 20h30', 'score': 80},
    {'title': "Bobun", 'desc': 'Il y a 2 jours à 14h11', 'score': 70},
    {
      'title': "Brochette de boeuf au fromage",
      'desc': 'Le 14/01/2020 à 21h40',
      'score': 40
    },
    {'title': "4 fromages", 'desc': 'Le 14/01/2020 à 14h15', 'score': 25},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Checker'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => SearchFood()));
        },
      ),
      body: SafeArea(
          child: Center(
              child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    itemCount: history.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return historyEntry(
                          history[index]['title'],
                          history[index]['desc'],
                          history[index]['score'],
                          Text('solol'));
                    }))
          ],
        ),
      ))),
    );
  }

  Widget historyEntry(String title, String desc, int score, Widget result) {
    var color = Icon(
      Icons.fiber_manual_record,
      color: Colors.grey.shade400,
    );
    if (score >= 65)
      color = Icon(
        Icons.fiber_manual_record,
        color: Colors.green.shade400,
      );
    else if (score >= 40)
      color = Icon(
        Icons.fiber_manual_record,
        color: Colors.deepOrange.shade400,
      );
    else if (score >= 25)
      color = Icon(
        Icons.fiber_manual_record,
        color: Colors.red.shade400,
      );
    else if (score >= 0)
      color = Icon(
        Icons.warning,
        color: Colors.red.shade400,
      );

    return GestureDetector(
      onTap: () => {print("WHAT'S BROOO")},
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: color,
              title: Text(title),
              subtitle: Text(desc),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchFood extends StatefulWidget {
  @override
  SearchFoodState createState() => SearchFoodState();
}

class SearchFoodState extends State<SearchFood> {
  String barcode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: scan,
          child: Icon(Icons.camera_enhance),
        ),
        body: SafeArea(
            child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Aliments'),
                  ),
                ),
              ],
            ),
          ),
        )));
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      print(barcode);
      setState(() {
        barcode = barcode;
      });
    } catch (e) {
      print(e);
      setState(() {
        barcode = "";
      });
    }
  }
}
