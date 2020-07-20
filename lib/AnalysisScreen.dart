import 'package:bibs/AddNewCrisis.dart';
import 'package:bibs/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

//TODO Save to local, Struct, and other intensity levels
var intensityData = <Crisis>[
//  new Crisis(DateTime.utc(2019, 12, 1), 5, bibsGreen),
//  new Crisis(DateTime.utc(2019, 12, 5), 7, bibsGreen),
//  new Crisis(DateTime.utc(2019, 12, 7), 6, bibsGreen),
//  new Crisis(DateTime.utc(2019, 12, 10), 8, bibsGreen),
];

class AnalysisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Crisis analysis', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),),
              ),
              HistoryCharts(height: 400),
            ],
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'add-crisis',
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_) => AddNewCrisis())); },
        child: Icon(Icons.add),
        backgroundColor: bibsGreen,
      ),
    );
  }
}

class Crisis {
  final DateTime date;
  final int intensity;
  final charts.Color color;
  final bool twisting;
  final bool pressure;
  final bool burn;
  final bool stabbing;
  final bool bloating;

  Crisis({this.date, this.intensity, Color color, this.twisting, this.pressure, this.burn, this.stabbing, this.bloating})
  : this.color = new charts.Color(r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class HistoryCharts extends StatefulWidget {
  HistoryCharts({this.height});
  final double height;

  @override
  HistoryChartsState createState() => HistoryChartsState();
}

class HistoryChartsState extends State<HistoryCharts> {
  Duration currentDuration = Duration(days: 7);
  DateTime windowMin = DateTime.now().subtract(Duration(days: 7));

  List<Crisis> dataWindow() {
    DateTime now = DateTime.now();
    var windowMax = DateTime.utc(now.year, now.month, now.day, now.hour, now.minute, now.second);
    var filteredData = intensityData.sublist(0);
    filteredData.retainWhere((elem) => elem.date.isAfter(windowMin) && elem.date.isBefore(windowMax));
    return filteredData;
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Crisis, DateTime>> seriesList = [
      charts.Series<Crisis, DateTime>(
        id: 'Intensity',
        data: dataWindow(),
        domainFn: (Crisis crisis, _) => crisis.date,
        measureFn: (Crisis crisis, _) => crisis.intensity,
        colorFn: (Crisis crisis, _) => crisis.color,
      )
    ];

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            durationButton(Duration(days: 365), "Year"),
            durationButton(Duration(days: 31 * 6), "6 months"),
            durationButton(Duration(days: 31), "Month"),
            durationButton(Duration(days: 7), "Week"),
            durationButton(Duration(days: 1), "Today"),
          ],
        ),
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: SizedBox(
            height: widget.height,
            child: charts.TimeSeriesChart(
              seriesList,
              defaultRenderer: charts.LineRendererConfig(includeArea: true, stacked: true),
              animate: true,
            )
          ),
        ),
      ]
    );
  }

  Widget durationButton(Duration duration, String text) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            windowMin = DateTime.now().subtract(duration);
            currentDuration = duration;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: bibsGreen),
            color: duration == currentDuration ? bibsGreen : Colors.transparent
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Center(
            child: Text(text,)
          )
        )
      )
    );
  }
}