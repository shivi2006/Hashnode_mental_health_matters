

import 'package:flutter/material.dart';
import 'package:mental_health_matters/main2.dart';
import 'package:mental_health_matters/filters.dart';



class TabsScreen extends StatefulWidget{

  @override
  TabsScreenState createState()=> TabsScreenState();

}

void main() {
  runApp(TabsScreen());
}

class TabsScreenState extends State<TabsScreen>{

  @override
  Widget build(BuildContext context){

    final tabPages = <Widget>[
      HomeScreen(),
     filters(),
    ];

    final tabs = <Tab>[
      const Tab(icon:Icon(Icons.food_bank)),
      const Tab(icon: Icon(Icons.access_alarm_outlined))
    ];

    return MaterialApp(
      home:DefaultTabController(
        length:2,
        child:Scaffold(
      appBar: AppBar(title:const Text('Choose your best doctor!'),
      backgroundColor: Colors.amberAccent,
      bottom: TabBar(
        tabs: tabs
      ),),
      body: TabBarView(children: tabPages,),
    )
      )
    );
  }

}