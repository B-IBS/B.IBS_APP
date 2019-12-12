import 'package:bibs/AddNewCrisis.dart';
import 'package:bibs/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

var intensity_data = [
  new Crisis(DateTime.utc(2019, 12, 1), 5, bibsGreen),
  new Crisis(DateTime.utc(2019, 12, 5), 7, bibsGreen),
  new Crisis(DateTime.utc(2019, 12, 7), 6, bibsGreen),
  new Crisis(DateTime.utc(2019, 12, 10), 8, bibsGreen),
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

  Crisis(this.date, this.intensity, Color color)
  : this.color = new charts.Color(r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class HistoryCharts extends StatefulWidget {
  HistoryCharts({this.height});
  final double height;

  @override
  HistoryChartsState createState() => HistoryChartsState();
}

class HistoryChartsState extends State<HistoryCharts> {
  Duration current_duration = Duration(days: 7);
  DateTime window_min = DateTime.now().subtract(Duration(days: 7));
  DateTime window_max = DateTime.now();

  List<Crisis> data_window() {
    var filtered_data = intensity_data.sublist(0);
    filtered_data.retainWhere((elem) => elem.date.isAfter(window_min) && elem.date.isBefore(window_max));
    return filtered_data;
  }

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Crisis, DateTime>> seriesList = [
      charts.Series<Crisis, DateTime>(
        id: 'Intensity',
        data: data_window(),
        domainFn: (Crisis crisis, _) => crisis.date,
        measureFn: (Crisis crisis, _) => crisis.intensity,
        colorFn: (Crisis crisis, _) => crisis.color,
      )
    ];

    return Column(
      children: <Widget>[
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            durationButton(Duration(days: 365), "Year"),
            durationButton(Duration(days: 31 * 6), "6 months"),
            durationButton(Duration(days: 31), "Month"),
            durationButton(Duration(days: 7), "Week"),
            durationButton(Duration(days: 1), "Today"),
          ],
        )
      ]
    );
  }

  Widget durationButton(Duration duration, String text) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            window_min = DateTime.now().subtract(duration);
            current_duration = duration;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: bibsGreen),
            color: duration == current_duration ? bibsGreen : Colors.transparent
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