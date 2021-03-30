import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DoctorItem.dart';
import 'dummy_doctors.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      appBar: AppBar(title: Text("Choose the right friend for you!"),),
      body: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                        return Container(
                        padding: EdgeInsets.all(20),
                       child:Expanded(
                         child:ListView(
                         children: dummy.map((doctorData) {
                     return DoctorItem(doctorData.id,doctorData.title);
                     }
                     ).toList(),
                       )
                       )
                       );
                        },
                         separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
      )
      )
      );
  }
                        
}
