import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerOption;

  Answer(this.selectHandler, this.answerOption);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 50,right: 50),
      child: RaisedButton(
        onPressed: selectHandler,
        child: Text(answerOption),
        color: Colors.blue,
      ),
    );
  }
}
