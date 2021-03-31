import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  final String dateText;
  Date(this.dateText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Icon(Icons.calendar_today),
        SizedBox(width: 10),
        Text(
          "Date: " + dateText,
          style: TextStyle(fontSize: 20),
        ),
      ]),
    );
  }
}
