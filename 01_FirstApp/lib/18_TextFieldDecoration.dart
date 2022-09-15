import 'package:flutter/material.dart';
import 'package:flutter_application_1/10_Stack_AlignWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // item untuk engetik
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // dihubungkan denngan textfield agar tampilan sama apa yang diketik sesuai
              TextField(
                decoration: InputDecoration(
                    // icon yang diluar
                    icon: Icon(Icons.adb),
                    //icon didalam
                    prefixIcon: Icon(Icons.person),
                    // filled untuk mewarnai
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    // kalau kita pake prefix tidak bisa pake prefixtext
                    prefix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.red,
                    ),
                    // sufix itu ada disisi belakang
                    //prefixText: "Name: ",
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Nama Lengkap: ",
                    hintText: "Nama Lengkapnya",
                    hintStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),

                obscureText: true,
                // value ini nama variable sebenarnya bebas
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
