import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Category.dart';
import 'Rating.dart';
import 'Hospital.dart';
import 'date.dart';
import 'Name.dart';

import 'time.dart';
 
void main() => runApp(DoctorDetails("Dr. Ria", "Counsellor","Apollo Hospitals","4 star",
    "26/01/2021", "5:00 PM - 6:00 PM"));

class DoctorDetails extends StatelessWidget {
  final String name;
  final String category;
  //final Image image;
  final String hospital;
  final String rating;
  final String date;
  final String time;
  DoctorDetails(this.name, this.category,this.hospital, this.rating, this.date, this.time,);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Meet your doctor!', style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold, fontSize: 24 ),),
          backgroundColor: Colors.blueAccent,
          
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              //Container(child: image, height: 170, width: 170),
              SizedBox(height: 70),
              Container(child: Text("Image goes here"), height: 170, width: 170),
              SizedBox(height:30),
              Name(name),
               SizedBox(height: 10),
               Hospital(hospital),

                SizedBox(height: 10),
                Category(category),

                 SizedBox(height: 10),
                 Rating(rating),

                  SizedBox(height: 10),

            
              Date(date),
              SizedBox(height: 10),
              Time(time),
              SizedBox(height: 10),

              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.blue)),
                child: Text('Register your session', style: TextStyle(color: Colors.white)),
                
              )
  
            ],
          ),
        ),
      ),
    );
    
  }
}