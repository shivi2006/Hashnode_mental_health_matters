import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class MeetLink extends StatelessWidget {
  final String link;
  MeetLink(this.link);
  final defaultText = TextStyle(color: Colors.black);
  final linkText = TextStyle(color: Colors.blue, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Icon(Icons.add_link),
        SizedBox(width: 10),
        Text(
          "Join here: ",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        // Text(
        //   //https://meet.google.com/rdr-bzxn-mqu
        //   linkText,
        //   style: TextStyle(
        //     fontSize: 20,
        //     color: Colors.blue,
        //     decoration: TextDecoration.underline,
        //   ),
        // ),
        RichText(
            text: TextSpan(children: [
          // TextSpan(
          //   style: defaultText,
          //   text: "To learn more ",
          // ),
          TextSpan(
              style: linkText,
              text: "Meet Link",
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  var url = link;
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                }),
        ]))
      ]),
    );
  }
}
