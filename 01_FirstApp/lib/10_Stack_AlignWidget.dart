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
          title: Text("Latihan Stack & AlignWidget"),
        ),
        // flexible untuk column
        body: Stack(
          children: <Widget>[
            // backgorund
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Listview dengan text
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                          "Ini adalah text yang ada dilapisan tengah dari Stack",
                          style: TextStyle(fontSize: 30)),
                    ),
                  ],
                )
              ],
            ),

            // button ditengah bawah
            Align(
              // x paling kanan -1, kiri 1, tengah 0 sama dengan y sama saja
              alignment: Alignment(0, 0.8),
              child: RaisedButton(
                child: Text("My button"),
                color: Colors.amber,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
