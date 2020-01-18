import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'fodmap.dart';

class FoodCheckerModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Checker'),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.search), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => SearchFood())); },),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return historyEntry();
                    }
                  )
                )
              ],
            ),
          )
        )
      ),
    );
  }

  Widget historyEntry() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Text('Yes'),
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
      floatingActionButton: FloatingActionButton(onPressed: scan, child: Icon(Icons.camera_enhance),),
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(decoration: InputDecoration(hintText: 'Aliments'),),
                ),
              ],
            ),
          ),
        )
      )
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      print(barcode);
      setState(() {
        barcode = barcode;
      });
    } catch(e) {
      print(e);
      setState(() {
        barcode = "";
      });
    }
  }
}