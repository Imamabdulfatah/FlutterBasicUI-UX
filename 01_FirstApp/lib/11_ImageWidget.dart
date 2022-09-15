import 'package:flutter/material.dart';

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
          title: Text("latihan Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              // // 1. ini yangnetwork/ goole langsung
              // image: NetworkImage(
              //     "https://ihitthebutton.com/wp-content/uploads/2020/05/free-youtube-subscribe-png-17.png"),

              // // 2. dari assets yang di daftar di pubspec.yaml dari foler images tarogambar
              image: AssetImage("images/monyet.jpg"),
              // fit untuk kesusuaian dengan box
              fit: BoxFit.contain,
              // megulang gambar dalam box
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
