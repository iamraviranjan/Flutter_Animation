import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailpage extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(''),
     ),

     body: Container(
   child: Hero(
   tag: 'background',
     child: Image.asset('assets/images/demo.gif'),
   ),
  ),



   );
  }
}
