import 'dart:convert';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
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
  var jsonData = {}.cast<String, dynamic>();

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
                productData(),
              ],
            ),
          ),
        )));
  }

  Widget productData() {
    if (jsonData['status'] == null)
      return Divider();
    print(barcode);
    print(jsonData['code']);
    if (jsonData['status'] == 1 && jsonData['product'] != null) {
      String name = getInArray(jsonData['product']['product_name'], '');
      String brand = getInArray(jsonData['product']['brands'], '');
      String imageUrl = getInArray(jsonData['product']['image_thumb_url'], '');
      int fodmapLevel = getFodmapLevels();

      return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: <Widget>[
            Text('Scanned', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Divider(),
            Row(
              children: <Widget>[
                Image.network(imageUrl),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(name, style: TextStyle(fontSize: 25),),
                        Text(brand, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),),
                      ],
                    )
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Text('Fodmap Level : ${fodmapLevel}'),
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: <Widget>[
            Icon(Icons.help),
            VerticalDivider(),
            Text('Product not found.'),
          ],
        ),
      );
    }
  }

  int getFodmapLevels() {
    int level = 0;
    if (jsonData['product']['nutriments'] == null)
      return -1;
    double lactose = getInArray(jsonData['product']['nutriments']['lactose_100g'], -1).toDouble();
    double fructose = getInArray(jsonData['product']['nutriments']['fructose_100g'], -1).toDouble();
    double polyols = getInArray(jsonData['product']['nutriments']['polyols_100g'], -1).toDouble();
    double glucose = getInArray(jsonData['product']['nutriments']['glucose_100g'], -1).toDouble();
    if (glucose == -1)
      glucose = getInArray(jsonData['product']['nutriments']['sugars_100g'], -1).toDouble();

    if (polyols >= 0.40)
      level += 1;
    if (fructose >= 0.00 && glucose >= 0.00) {
      double excessFructose = fructose - glucose;
      if (excessFructose >= 0.15)
        level += 1;
    }
    if (lactose >= 1.00)
      level += 1;
    return level;
  }

  dynamic getInArray(dynamic value, dynamic defaultValue) {
    if (value == null)
      return defaultValue;
    return value;
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      final response = await http.Client().get('https://world.openfoodfacts.org/api/v0/product/${barcode}.json');
      final json = jsonDecode(response.body).cast<String, dynamic>();
      setState(() {
        barcode = barcode;
        jsonData = json;
      });
    } catch (e) {
      print(e);
      setState(() {
        barcode = "";
      });
    }
  }
}
