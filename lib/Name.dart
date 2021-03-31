
import 'dart:ui';

import 'package:flutter/material.dart';

class Name extends StatelessWidget {
  final String name;
  Name(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  
        SizedBox(width: 10),
        Text(
          "Name: " + name,
          style: TextStyle(fontSize: 20, color: Colors.black,fontWeight:FontWeight.bold),
        ),
      ]),
    );
  }
}