import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text('Dicess'),
        ),
      ),
      body: Dicepage(),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDicNum = 1;
  int rightDicNum = 1;
  void chageDiceFace() {
    setState(() {
      leftDicNum = Random().nextInt(6) + 1;
      rightDicNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            child: Image.asset('image/dice$leftDicNum.png'),
            onPressed: () {
              chageDiceFace();
            },
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('image/dice$rightDicNum.png'),
            onPressed: () {
              chageDiceFace();
            },
          )),
        ],
      ),
    );
  }
}
