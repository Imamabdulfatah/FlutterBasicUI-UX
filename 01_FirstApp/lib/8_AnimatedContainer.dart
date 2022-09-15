import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animation Container"),
        ),
        // ListView ini digunakan jika text widget melebihi tampilan maka akan scroll kebawah/tidak erro
        body: Center(
          // jika direfresh maka akan berubah bentu dan warna dari setting dibawah
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, random.nextInt(256),
                  random.nextInt(256), random.nextInt(256)),

              duration: Duration(seconds: 1),
              // - width ini harus double jadi 50.0
              // - nextInt = random sampai 100 berarti 100 + 1
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
