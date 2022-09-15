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
        appBar: AppBar(title: Text("")),
        // column(kebawah)/row(kesamping)
        body: Column(
          // crossAxisAligment = titik axis atau horizontal(start awal, end akhir)
          crossAxisAlignment: CrossAxisAlignment.start,
          // untuk colum ke tengah bawah/ row ke tengah samping
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row(
              children: <Widget>[
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6")
              ],
            )
          ],
        ),
      ),
    );
  }
}
