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
        // flexible untuk column
        body: Column(
          children: [
            Flexible(
              flex: 1,
              // flexible untuk row
              child: Row(
                children: <Widget>[
                  Flexible(
                    // flex ini sebagai perbandingan agar flexible
                    flex: 1,
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.blueAccent,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            // flexible untuk column
            Flexible(
              // flex ini sebagai perbandingan agar flexible
              flex: 2,
              child: Container(
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
