import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan Spacer Widget"),
        ),
        body: Center(
          child: Row(
              // 1. spaceEvenly = space diantara kotak dan layar
              // 2. spaceBetween = space diantara kotak layar tidak
              // 3. spacerWidget = space custom

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // spacer ditaruh disini flex untuk perbandingannya
                Spacer(flex: 1),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),
                Spacer(flex: 2),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
                Spacer(flex: 3),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
                Spacer(flex: 2),
              ]),
        ),
      ),
    );
  }
}
