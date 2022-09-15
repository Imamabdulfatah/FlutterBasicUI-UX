import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
// ini versi singkat dari
void main() => runApp(new MyApp());

// // { stl lalu tekan tab}
// StatelessWidget
// class MyApp extends StatelessWidget {
// }

// // { stf lalu tab }
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void tekanTombol() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Statefulll Widget demo"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("12"),
              RaisedButton(
                child: Text("Tambah Bilangan"),
                // membuat method tekanTombol diatas
                onPressed: tekanTombol,
              )
            ],
          ),
        ),
      ),
    );
  }
}
