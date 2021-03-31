import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final String rating;
  Rating(this.rating);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
  
        SizedBox(width: 10),
        Text(
          " Rating:  " + rating,
          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight:FontWeight.bold),
        ),
      ]),
    );
  }
}