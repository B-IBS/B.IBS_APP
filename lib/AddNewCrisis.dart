import 'package:bibs/AnalysisScreen.dart';
import 'package:bibs/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddNewCrisis extends StatefulWidget {
  @override
  AddNewCrisisState createState() => AddNewCrisisState();
}

class AddNewCrisisState extends State<AddNewCrisis> {
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();
  double intensity = 0;

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(context: context, initialTime: selectedTime);
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }
  Future<void> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(1970, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'add-crisis',
        onPressed: () {
          intensityData.add(Crisis(DateTime.utc(selectedDate.year, selectedDate.month, selectedDate.day, selectedTime.hour, selectedTime.minute), (intensity / 10).floor(), bibsGreen));
          Navigator.pop(context);
        },
        child: Icon(Icons.done),
        backgroundColor: bibsGreen,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Time of crisis', style: TextStyle(fontSize: 30, color: Colors.grey[800])),
                  Row(
                    children: <Widget>[
                      TimeDropdown(
                        labelText: 'Date',
                        valueText: DateFormat.yMMMd().format(selectedDate),
                        onPressed: () { selectDate(context); },
                      ),
                      VerticalDivider(),
                      TimeDropdown(
                        labelText: 'Time',
                        valueText: selectedTime.format(context),
                        onPressed: () { selectTime(context); },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(height: 50,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Intensity', style: TextStyle(fontSize: 30, color: Colors.grey[800])),
                  Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Slider(
                          value: intensity,
                          min: 0,
                          max: 100,
                          divisions: 10,
                          label: "${(intensity / 10).floor()}",
                          onChanged: (newIntensity) {
                            setState(() {
                              intensity = newIntensity;
                            });
                          }
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeDropdown extends StatelessWidget {
  const TimeDropdown(
      {
        Key key,
        this.labelText,
        this.valueText,
        this.onPressed,
      }) : super(key: key);

  final String labelText;
  final String valueText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: onPressed,
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: labelText,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(valueText),
                Icon(Icons.arrow_drop_down, color: Colors.grey[600],)
              ],
            ),
          ),
        )
    );
  }
}