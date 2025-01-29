import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNum = 1;
  void changeBallNum() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBallNum();
              },
              child: Image.asset('images/ball$ballNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
