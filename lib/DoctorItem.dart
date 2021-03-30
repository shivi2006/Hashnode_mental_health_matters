import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DoctorItem extends StatelessWidget{
  final String id;
  final  String title;

  DoctorItem(this.id,this.title);

  //void selectTheCategory(BuildContext ctx) {
    //Navigator.of(ctx).pushNamed('/HomeScreen',
      //  arguments: {'id': id, 'title': title});
  //}

  @override
  Widget build(BuildContext context) {
    return InkWell(
   // onTap:()=> selectTheCategory(context),
    splashColor: Theme.of(context).primaryColor,
    borderRadius: BorderRadius.circular(10),
    child: 
     Card(  
            child: Row(  
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                children: <Widget>[  
                 Image.asset("assets/doc1"),  
                  Expanded(  
                      child: Container(  
                          padding: EdgeInsets.all(50),  
                           decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueAccent, Colors.blue[100]
          ],)),
                          child: Column(  
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                            children: <Widget>[  
                              Text(  
                                  title, style: TextStyle(  
                                  fontWeight: FontWeight.bold  
                              )  
                              ) 
                             // Text(this.description), Text(  
                                //  "Price: " + this.price.toString()  
                            ]
                            )
                      
                      ))
                  ]
                      )
            )
     );
    }
    }

    /* flex:1,
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     // children: <Widget>[
        //child:SizedBox(height:5),
      child:Container(
      padding: const EdgeInsets.all(50),
      child:Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blueAccent, Colors.blue[100]
          ],
         // begin: Alignment.topLeft,
          //nd: Alignment.bottomRight,
        ),
            borderRadius: BorderRadius.circular(10)
      ),
      ),
      //Sizedbox(height:10),
      

    ),
    );*/