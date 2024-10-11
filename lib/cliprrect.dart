import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Clip_Rrect extends StatelessWidget {   @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Clip Rrect'),

     ),

     body:

     Center(
       child: ClipRRect(
         borderRadius: BorderRadius.all(Radius.elliptical(22, 22)),
         // child: Container(
         //   width: 200,
         //   height: 100,
         //   color: Colors.blue, // Add a color to see the container
         
         child: Image.asset('assets/images/demo.gif', width: 400,height: 200, fit: BoxFit.fill,),
         
         ),
       ),
    // ),   // container
   );
}
}
