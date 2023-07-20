import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Magic Ball'),
      ),
      body: Magicball(),
    ),
  ));
}

class Magicball extends StatefulWidget {
  @override
  _MagicballState createState() => _MagicballState();
}

class _MagicballState extends State {
  int num = 1;
  int saya = 3;

  void answer() {
    //super class
    num = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  answer();
                });
              },
              child: Image.asset('images/ball$num.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  saya = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$saya.png'),
            ),
          ),
        ],
      ),
    );
  }
}
