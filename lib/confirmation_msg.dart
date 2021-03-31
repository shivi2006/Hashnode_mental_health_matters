import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String messageText;
  Message(this.messageText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        messageText,
        style: TextStyle(
            fontSize: 40, color: Colors.green, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
