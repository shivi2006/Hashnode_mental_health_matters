import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String category;
  Category(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  
        SizedBox(width: 10),
        Text(
          "Category: " + category,
          style: TextStyle(fontSize: 20, color: Colors.black,fontWeight:FontWeight.bold),
        ),
      ]),
    );
  }
}