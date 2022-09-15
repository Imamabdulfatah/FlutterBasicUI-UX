import 'package:flutter/material.dart';
import 'package:flutter_application_1/10_Stack_AlignWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              // tinggal dibah disini jadi tersusun
              buildCard(Icons.account_box, "Account Box"),
              buildCard(Icons.adb, "Serangga Android")
            ],
          ),
        ),
      ),
    );
  }

  // membuat method dari material [card klik kanan -> refactor -> extract method]
  // kitarubah Icon dengan tipeiconData   dan text dengan string text
  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.black26,
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
