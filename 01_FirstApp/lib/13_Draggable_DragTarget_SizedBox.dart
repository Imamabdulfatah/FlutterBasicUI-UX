import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/10_Stack_AlignWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  late Color targetColor;
  // ini untuk dragtarget memastikan diterima tidak
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Dragable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Draggable ini digunakan untuk mendrag suatu object
                // maka perlu <tipe data> apa yang mau diambil
                Draggable<Color>(
                  // jika kita tidak memiliki box bisa pake sizedbox
                  data: color1,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      // stadumborder = untuk sudut agar tumpul
                      shape: StadiumBorder(),
                      // elevation = untuk shadow
                      elevation: 3,
                    ),
                  ),
                  // untuk mengambar ketika didrag posisi awalnya apa
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      // stadumborder = untuk sudut agar tumpul
                      shape: StadiumBorder(),
                      // elevation = untuk shadow
                      elevation: 0,
                    ),
                  ),
                  // ketika didrag lingkaranya kaya gimana
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      // stadumborder = untuk sudut agar tumpul
                      shape: StadiumBorder(),
                      // elevation = untuk shadow
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  // jika kita tidak memiliki box bisa pake sizedbox
                  data: color2,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      // stadumborder = untuk sudut agar tumpul
                      shape: StadiumBorder(),
                      // elevation = untuk shadow
                      elevation: 3,
                    ),
                  ),
                  // untuk mengambar ketika didrag posisi awalnya apa
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      // stadumborder = untuk sudut agar tumpul
                      shape: StadiumBorder(),
                      // elevation = untuk shadow
                      elevation: 0,
                    ),
                  ),
                  // ketika didrag lingkaranya kaya gimana
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      // stadumborder = untuk sudut agar tumpul
                      shape: StadiumBorder(),
                      // elevation = untuk shadow
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            // dragtarget digunakan sebai tempat dragnya
            DragTarget<Color>(
              // ketika diterima
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                // value sesuai warna didrag
                targetColor = value;
              },
              // ketika true maka akan melakukan aksi
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    // ini untuk isAccepted true
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          // stadumborder = untuk sudut agar tumpul
                          shape: StadiumBorder(),
                          // elevation = untuk shadow
                        ),
                      )
                    // ini untuk isacceptednya false
                    : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.black26,
                          // stadumborder = untuk sudut agar tumpul
                          shape: StadiumBorder(),
                          // elevation = untuk shadow
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
