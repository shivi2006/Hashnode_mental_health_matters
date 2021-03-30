import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DoctorItem.dart';
import 'dummy_doctors.dart';

//void main() {
 /// runApp(HomeScreen());
//}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
      //appBar: AppBar(title: Text("Choose the right friend for you!"),),
      body: // ListView.separated(
             //           physics: BouncingScrollPhysics(),
               //         scrollDirection: Axis.vertical,
                 //       shrinkWrap: true,
                   //     itemCount: 7,
                     //   itemBuilder: (BuildContext context, int index) {
                       // return Container(
                        //padding: EdgeInsets.all(20),
                        // child: Column(children:<Widget> [
                          // Container(
                            // height: 400,
                           Column(children : <Widget>[
                              SizedBox(height:10),
                              
                               Expanded(
                                flex: 1,
                                child: Container(
                               //width: double.infinity,
        
          padding: EdgeInsets.all(8),
         // padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
          //color: Colors.indigo,
          child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
            child:ListView(
                         children: dummy.map((doctorData) {
                     return DoctorItem(doctorData.id,doctorData.title);
                     }
                     ).toList(),
                       )
                         //  )]
                        // )
                       
                       //);
                       // },
                        // separatorBuilder: (BuildContext context, int index) {
                          //return SizedBox(
                            //height: 10,
                         // );
                        //},
      )
      )
                                )
                               )
      ]
                           ))
                           );
    
      
    
    
      
  }
                        
}