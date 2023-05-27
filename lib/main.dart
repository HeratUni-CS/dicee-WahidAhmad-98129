import 'dart:math';
import 'package:flutter/material.dart';

  void main(){
    runApp(myApp());
  }

  class myApp extends StatefulWidget {
    @override
    State<myApp> createState() => _myAppState();
  }
  class _myAppState extends State<myApp> {
    @override

    int leftDice=4;
    int rightDice=5;

    void  changeDiceNumber(){
      leftDice=Random().nextInt(6)+1;
      rightDice=Random().nextInt(6)+1;
    }

    Widget build(BuildContext context) {
      return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(
              child: Text(
                  'Dicee Appication',
                  style: TextStyle(
                fontSize: 35,
              ),
              ),
            ),
          ),
          body: Center(
            child: Container(
              child: Row(
                children: [
                 Expanded(child: TextButton(
                   onPressed: (){
                     setState(() {
                       changeDiceNumber();
                     });
                   },
                   child: Image.asset('images/dice$leftDice.png'),
                 ),
                 ),

                  Expanded(child: TextButton(
                    onPressed: (){
                      setState(() {
                        changeDiceNumber();
                      });
                    },
                    child: Image.asset('images/dice$rightDice.png'),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
