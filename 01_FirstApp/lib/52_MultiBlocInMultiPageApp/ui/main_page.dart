import 'package:flutter/material.dart';
import 'package:flutter_application_1/52_MultiBlocInMultiPageApp/ui/draft_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraftPage(
      body: Center(
        child: Column(
          children: <Widget>[
            Text("0"),
            RaisedButton(
              onPressed: () {},
              child: Text("Click to change"),
              color: Colors.pink,
              shape: StadiumBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
