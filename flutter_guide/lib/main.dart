import 'package:flutter/material.dart';
import 'package:flutter_guide/answer.dart';
import 'question.dart';

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
  var questions = [
    {
      "question": "what is you faviorite animal",
      "answer": ["dog", "cat", "elephant"]
    },
    {
      "question": "what is you faviorite icecream",
      "answer": ["choclate", "vanila", "butter"]
    },
    {
      "question": "who is handsome guy",
      "answer": ["me", "me", "me"]
    },
  ];

  void _onPressedOnButton() {
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
            question(
              questions[questionIndex]["question"],
            ),
            ...(questions[questionIndex]["answer"] as List<String>).map((answer){
              return Answer(_onPressedOnButton,answer);
            })
          ],
        ),
      ),
    );
  }
}
