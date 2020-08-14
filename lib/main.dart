import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Magic Decision Helper',
              ),
            ),
            backgroundColor: Colors.blueGrey.shade900,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballnum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    ballnum = Random().nextInt(5) + 1;
                    //print('ball pressed');
                  },
                );
              },
              child: Image.asset('images/ball$ballnum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
