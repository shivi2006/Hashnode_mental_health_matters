import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData(
       primarySwatch: Colors.blue,
       visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(title: 'We care for your Mental Health!'),
    );
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(widget.title),
      ),
      body: Center(
        
        child:ListView(
         
          padding : EdgeInsets.symmetric(vertical: 100, horizontal: 50),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical:10),
              child: Text(
              'You are not logged in',
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () => null, // Change this Param for google login
              child: Text(
              'Log in With Google',
              style: Theme.of(context).textTheme.headline6,
            ),
            ),
          ],
        ),
      )
    );
  }
}
