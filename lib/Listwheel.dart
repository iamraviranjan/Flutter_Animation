import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_wheel extends StatefulWidget {  @override
  State<List_wheel> createState() => _List_wheelState();
}

class _List_wheelState extends State<List_wheel> {
  var arrindex = [1,2,3,4,5,6,7,8,9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List wheel & Gradient'),
      ),

    body:Center(
      child: Container(
    decoration: BoxDecoration(
      // Animation
      gradient: RadialGradient(
          colors: [Color(0xffffecd2),Color(0xfffcb69f)],
          center: Alignment.bottomCenter,
          stops: [0.0,1.0]

   // Animation
   //  gradient: LinearGradient(
   //  colors: [Color(0xfffad0c4), Color(0xffffd1ff)],
   //    begin: FractionalOffset(1.0,0.5),
   //    end: FractionalOffset(0.0,0.5),
   //    stops: [0.0,1.0],
    ),
    ),
        child: ListWheelScrollView(
          itemExtent: 200,
          children:  arrindex.map((value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Text('$value', style: TextStyle(fontSize: 22, color: Colors.white),)),
              decoration: BoxDecoration(
               color: Colors.blue,
                borderRadius: BorderRadius.circular(21),
              ),
              width: double.infinity,
            ),
          )).toList(),

        ),
      ),
    ),


    );
  }}
