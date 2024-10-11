import 'package:animation/detailhero.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hero_animate extends StatefulWidget {  @override
  State<Hero_animate> createState() => _Hero_animateState();
}

class _Hero_animateState extends State<Hero_animate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hero'),
      ),
      
      body: 
      Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> detailpage()));
            },
            child: Hero(
              tag: 'background',
              child: Image.asset('assets/images/demo.gif' , width: 150, height: 100,),

            ),
          ),
        ),
      ),
      
    );
  }}
