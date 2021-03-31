import 'package:confirmation_page/confirmation_msg.dart';
import 'package:confirmation_page/date.dart';
import 'package:confirmation_page/meet_link.dart';
import 'package:confirmation_page/time.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
    "26/01/2021", "5:00 PM - 6:00 PM", "https://meet.google.com/rdr-bzxn-mqu"));

class MyApp extends StatelessWidget {
  final String date;
  final String time;
  final String link;
  MyApp(this.date, this.time, this.link);

  // This widget is the root
  // of your application

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Booking Successful !'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              //Image.asset('assets/congratulations_1.jpg'),
              SizedBox(height: 70),
              Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.green,
                size: 100.0,
              ),
              Message("Your booking is confirmed !"),
              Date(date),
              SizedBox(height: 10),
              Time(time),
              SizedBox(height: 10),
              MeetLink(link),
            ],
          ),
        ),
      ),
    );
  }
}
