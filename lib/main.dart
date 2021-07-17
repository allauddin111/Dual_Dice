import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(

      home: Scaffold(

        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftdice=1;
  int rightdice=1;


  void dicenumber(){
    setState(() {
      leftdice=Random().nextInt(6)+1;
      rightdice=Random().nextInt(6)+1;
    });

  }


  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: FlatButton(
              onPressed: (){
                setState(() {
                  dicenumber();
                });
              } ,
              child: Image.asset('images/dice$leftdice.png')),//leftdice
          ),
          Expanded(child: FlatButton(
              onPressed:(){
                setState(() {
                  dicenumber();
                });
              } ,
              child: Image.asset('images/dice$rightdice.png')),//rightdice
          )
        ],
      ),
    );
  }
}

