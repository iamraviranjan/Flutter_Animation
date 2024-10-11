import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tween_animate extends StatefulWidget {  @override
  State<Tween_animate> createState() => _Tween_animateState();
}

class _Tween_animateState extends State<Tween_animate> with SingleTickerProviderStateMixin{

  late Animation animation;
  late AnimationController animationController;
  late Animation colorAnimation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 200.0, end: 100.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.orange).animate(animationController);

    animationController.addListener((){
     // print(animation.value);
      setState(() {

      });

    });
    animationController.forward();

  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar:
   AppBar(
     title: Text('Tween'),
   ),

     body: Center(
       child: Container(
         width: animation.value,
         height: animation.value,
         color: colorAnimation.value,
       ),
     ),

   );
  }}
