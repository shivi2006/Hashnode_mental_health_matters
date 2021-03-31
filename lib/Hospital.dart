import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  final String hospital;
  Hospital(this.hospital);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  
        SizedBox(width: 10),
        Text(
          "Currently at: " + hospital,
          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.bold),
        ),
      ]),
    );
  }
}