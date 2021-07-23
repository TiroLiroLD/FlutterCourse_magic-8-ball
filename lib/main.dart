import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text(
            "Ask Me Anything",
          ),
        ),
        body: EightBallWidget(),
      ),
    ));

class EightBallWidget extends StatefulWidget {
  @override
  _EightBallWidgetState createState() => _EightBallWidgetState();
}

class _EightBallWidgetState extends State<EightBallWidget> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
