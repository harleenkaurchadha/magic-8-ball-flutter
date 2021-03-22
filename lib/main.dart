import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
      body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
          child: FlatButton(
              onPressed: (){
                setState(() {
                  _ballNumber = Random().nextInt(5) + 1;
                });
                print(_ballNumber);
                print('i got clicked');
              },
              child: Image.asset('images/ball$_ballNumber.png'),
          ),
    );
  }
}


