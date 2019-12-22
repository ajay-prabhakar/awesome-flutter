import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  List<String> questions = ['A', 'B', 'C'];

  void onPressedOnButton() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: onPressedOnButton,
            ),
            RaisedButton(
                child: Text("Answer 2"),
                onPressed: () {
                  onPressedOnButton();
                }),
            RaisedButton(
                child: Text("Answer 3"),
                onPressed: () {
                  onPressedOnButton();
                }),
          ],
        ),
      ),
    );
  }
}
