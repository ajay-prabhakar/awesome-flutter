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
  int score = 0;
  int rscore = 0;
  int questionIndex = 0;
  var questions = [
    {
      "question": "what is you faviorite animal",
      "answer": [
        {"text": "dog", "score": 10},
        {"text": "cat", "score": 5},
        {"text": "elephant", "score": 3}
      ]
    },
    {
      "question": "what is you faviorite icecream",
      "answer": [
        {"text": "vanila", "score": 10},
        {"text": "butter", "score": 5},
        {"text": "choclate", "score": 3}
      ]
    },
    {
      "question": "who is handsome guy",
      "answer": [
        {"text": "me", "score": 10},
        {"text": "me", "score": 5},
        {"text": "me", "score": 3}
      ]
    },
  ];

  void _onPressedOnButton() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    score = score + rscore;
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
        body: questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  question(
                    questions[questionIndex]["question"],
                  ),
                  ...(questions[questionIndex]["answer"]
                          as List<Map<String, Object>>)
                      .map((answer) {
                    rscore = answer["score"];
                    return Answer(_onPressedOnButton, answer["text"]);
                  }),
                ],
              )
            : Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 150),
                    child: Text(
                      "You did !! and your score is " + score.toString(),
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    color: Colors.blue,
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text("Reset"),
                      onPressed: () {
                        setState(() {
                          questionIndex = 0;
                          score = 0;
                          rscore = 0;
                        });
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
