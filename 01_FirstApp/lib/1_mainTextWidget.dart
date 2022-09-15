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
    // materialApp() = yang berisi data data meterial design
    return MaterialApp(
      // home ini tampilan awal/dasar android
      home: Scaffold(
        // 1. appBar = judul
        // 2. body = isinya
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ), // Text untuk menampilakan widgets

        // teknik mudah hello world ketengah
        // - seleksi Text lalu klik kanan refactor center atau lainnya - refactor widgets container
        // - untuk merapihkan barisan (shift+alt+f)
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 100,
                child: Text(
                  "Saya Sedang melathi kemampuan flutter saya",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),

                  // maxLines: 2, // maxLines= jumlah baris
                  // overflow: TextOverflow
                  //    .ellipsis, // TextOverFlow.elipsis = terpotong ada titik
                  // softWrap: false,
                ))),
      ),
    );
  }
}
