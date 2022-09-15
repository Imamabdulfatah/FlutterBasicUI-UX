import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
// ini versi singkat dari
void main() {
  runApp(new MyApp());
}

// { stl lalu tekan tab}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan container"),
        ),
        body: Container(
            color: Colors.red,
            margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
            // jika pading dimatikan maka ada jarak 10 dari margin di bawah
            padding: EdgeInsets.only(bottom: 10, top: 20),
            child: Container(
              // color: Colors.blue,
              // margin: EdgeInsets.all(10),
              // // gradient untuk gradai
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.amber, Colors.blue])),
            )),
      ),
    );
  }
}
