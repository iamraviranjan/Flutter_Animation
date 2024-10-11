import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ripple_animate extends StatefulWidget {  @override
  State<Ripple_animate> createState() => _Ripple_animateState();
}

class _Ripple_animateState extends State<Ripple_animate> with SingleTickerProviderStateMixin{

  late Animation _animation;
  late AnimationController _animationController;
  var listRadius = [150.0, 200.0, 250.0,300.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this, duration:  Duration(seconds: 4), lowerBound: 0.5);
    //_animation = Tween(begin: 0.0 , end: 1.0).animate(_animationController);

    _animationController.addListener((){
      setState(() {

      });

    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(
    title: Text('Ripple'),
  ),

    body: Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          buildMyContainer(listRadius[0]),
          buildMyContainer(listRadius[1]),
          buildMyContainer(listRadius[2]),
          buildMyContainer(listRadius[3]),
          Icon(Icons.add_call, color: Colors.white, size: 33,)
        ]
      ),
    ),

  );
  }

Widget buildMyContainer(radius){
    return Container(
      width: radius*_animationController.value,
      height: radius*_animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0 - _animationController.value),
      ),
    );
}
}


// Stack(
// alignment: Alignment.center,
// children: listRadius.map((radius)=>  Container(
// width: radius*_animationController.value,
// height: radius*_animationController.value,
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.blue.withOpacity(1.0 - _animationController.value),
// ),
// )).toList(),
// ),