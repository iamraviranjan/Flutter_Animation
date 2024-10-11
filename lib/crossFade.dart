import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cross_Fade extends StatefulWidget {
  @override
  State<Cross_Fade> createState() => _Cross_FadeState();
}

class _Cross_FadeState extends State<Cross_Fade> {
  bool isfirst = true;
  //opacity

  var myopacity =1.0;
  bool isVisible = true;


  @override
  void initState() {

    super.initState();
    // Timer(Duration(seconds: 4),(){
    //   reload();
    // });
  }
  void reload(){
    setState(() {
      if(isfirst) {
        isfirst = false;
      }else{
        isfirst = true;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cross Fade"),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedCrossFade(
            duration: Duration(seconds: 2),
              firstChild: Container(width: 200, height: 200, color: Colors.blueGrey,),
              secondChild: Image.asset('assets/images/flu.png', width: 100,height: 100,),
              firstCurve: Curves.bounceIn,
              secondCurve: Curves.easeInOut,

              crossFadeState: isfirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
          ),

          SizedBox(height: 22,),

          ElevatedButton(onPressed: (){
            reload();
          }, child: Text('crossfade')),

          // Opacity
    SizedBox(height: 22,),
          AnimatedOpacity(opacity: myopacity, duration: Duration(seconds: 2),
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
          ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              if(isVisible){
                myopacity = 0.0;
                isVisible = false;
              }else{
                myopacity = 1.0;
                isVisible = true;
              }
            });
          }, child: Text('Close')),

        ],
      )




    );
  }
}
