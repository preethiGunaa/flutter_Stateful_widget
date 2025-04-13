import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondAppState();
  }
}

class SecondAppState extends State<SecondApp> {
  String displayText = "Preethi";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Change Hi to Bye")),
        body: Column(
          children: [
            Text(displayText),
            MaterialButton(
              onPressed: () {
                setState(() {
                  displayText = "Bye";
                });
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
    );
  }
}
