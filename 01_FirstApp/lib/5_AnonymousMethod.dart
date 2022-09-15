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
  // merubah message di children
  String message = "Ini adalah Text";

  // kalo ini method terlihat/ biasa
  // void tombolDitekan()
  // {
  //   setState(() {
  //     message = "Tombol sudah ditekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                child: Text("Tekan saya"),
                // ini contoh anonymous method / tanpa di deklarasikan
                onPressed: () {
                  setState(() {
                    message = "Tombol sudah ditekan";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
