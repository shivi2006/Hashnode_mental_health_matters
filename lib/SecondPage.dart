import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  final String name;
  final String hospital;
  final String rating;
  final String gmeetLink;
  final String image;
  final String time;
  final String id;
  const SecondPage({Key key, this.name, this.hospital, this.rating, this.gmeetLink, this.image, this.time,this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("On Press Works"),
        ],
      ),
    );
  }

}