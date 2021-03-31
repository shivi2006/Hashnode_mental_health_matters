import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final String timeText;
  Time(this.timeText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Icon(Icons.access_time),
        SizedBox(width: 10),
        Text(
          "Time: " + timeText,
          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight:FontWeight.bold),
        ),
      ]),
    );
  }
}