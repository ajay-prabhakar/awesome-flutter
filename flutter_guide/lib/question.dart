import 'package:flutter/cupertino.dart';

class question extends StatelessWidget {
  final String quetionText;

  question(this.quetionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        quetionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
