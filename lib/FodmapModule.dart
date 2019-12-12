import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fodmap.dart';

class FodmapModule extends StatefulWidget {
  @override
  FodmapModuleState createState() => FodmapModuleState();
}

class FodmapModuleState extends State<FodmapModule> {
  List<Map<String, dynamic>> search = [];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FODMAP'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search for aliments',
                    filled: true,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        Future.delayed(Duration(milliseconds: 50)).then((_) {
                          searchController.clear();
                          FocusScope.of(context).unfocus();
                        });
                      }
                    )
                  ),
                  onChanged: (_) { searchAliment(); },
                ),
                Expanded(
                  child: renderList()
                )
              ],
            )
          ),
        ),
      ),
    );
  }

  Widget renderList() {
    if (searchController.text.length == 0)
      return categoryList();
    else if (searchController.text.startsWith('category:'))
      return searchCategoryList();
    else
      return searchList();
  }

  Widget categoryList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: fodmap.length,
      itemBuilder: (context, index) {
        return (
          FlatButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
              setState(() {
                searchController.text = 'category:' + fodmap[index]['name'].toString().toLowerCase();
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Row(
                children: <Widget>[
                  Image.network(fodmap[index]['image'], height: 40, width: 40,),
                  VerticalDivider(),
                  Text(fodmap[index]['name'], style: TextStyle(fontSize: 30),)
                ],
              )
            )
          )
        );
      },
    );
  }

  Widget searchCategoryList() {
    search = [];
    var categoryName = searchController.text.substring('category:'.length);
    var result = fodmap.firstWhere((elem) => elem['name'].toString().toLowerCase() == categoryName, orElse: () => {});
    if (result.length == 0)
      search = search;
    else {
      search = result['list'];
    }
    setState(() {
      search = search;
    });
    return searchList();
  }

  Widget searchList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: search.length,
      itemBuilder: (context, index) {
        var color = Colors.green;
        if (search[index]['trigger'] > 0.4)
          color = Colors.orange;
        if (search[index]['trigger'] > 0.7)
          color = Colors.red;
        return (
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                child: Text(search[index]['aliment'], style: TextStyle(fontSize: 30), softWrap: true,),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ],
            ),
          )
        );
      }
    );
  }

  void searchAliment() {
    search = [];
    fodmap.forEach((item) {
      var list = item['list'] as List<Map<String, dynamic>>;
      list.forEach((aliment) {
        var name = aliment['aliment'] as String;
        name = name.toLowerCase();
        if (name.contains(searchController.text)) {
          search.add(aliment);
        }
      });
    });
    setState(() {
      search = search;
    });
  }
}