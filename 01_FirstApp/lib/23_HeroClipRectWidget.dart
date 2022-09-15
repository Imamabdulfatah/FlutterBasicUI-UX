import 'package:flutter/material.dart';
import 'package:flutter_application_1/14_MultiPage/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Latihan Hero Animation",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: 100,
        height: 100,
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage("images/jennie.jpg"),
        ),
      ),
    );
  }
}


// hero animation adalah ketika berganti space dan dia akan ada transisi secara bergerak
