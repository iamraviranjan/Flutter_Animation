import 'package:animation/Hero.dart';
import 'package:animation/Listwheel.dart';
import 'package:animation/MappingList.dart';
import 'package:animation/Ripple_animation.dart';
import 'package:animation/Tween_animation.dart';
import 'package:animation/cliprrect.dart';
import 'package:animation/crossFade.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Foo Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blue,
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.primary,

        title: Text(widget.title),
      ),
      body:
            Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blueGrey.shade200,
            padding: EdgeInsets.all(22),
            child: Column(
              children: [
                Container(
                  width: 500,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          AnimatedContainer(
                              width: _width,
                              height: _height,
                              curve: Curves.bounceIn,
                              decoration: myDecor,
                              duration: Duration(seconds: 2),
                          ),
                        ],
                      ),
                  SizedBox(height: 22,),
                      ElevatedButton(onPressed: (){

                        setState(() {
                          if(flag) {
                            _width = 100.0;
                            _height = 200.0;
                            myDecor = BoxDecoration(
                              borderRadius: BorderRadius.circular(21),
                              color: Colors.orange
                            );
                            flag = false;
                          }  else{
                            _width = 200.0;
                            _height = 100.0;
                            myDecor = BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                              color: Colors.orange
                            );
                            flag = true;
                          }
                        });
                      }, child: Text('Animation')),
                    ],
                  ),
                ),


//    Extra Page.
                Column(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .blue.shade200, // Set the background color here
                        ),
                        onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cross_Fade()));
                    }, child: Text('Cross Fade' ,style: TextStyle(fontSize: 23), )),


                SizedBox(width: 22,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .blue.shade200, // Set the background color here
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Hero_animate()));
                        }, child: Text('Hero ani' ,style: TextStyle(fontSize: 23), )),


                    // ListWheel.

                    SizedBox(width: 22,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .blue.shade200, // Set the background color here
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>List_wheel()));
                        }, child: Text('3d' ,style: TextStyle(fontSize: 23), )),

                    // Clip Rrect

                    SizedBox(width: 22,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .blue.shade200, // Set the background color here
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Clip_Rrect()));
                        }, child: Text('Clip rrect' ,style: TextStyle(fontSize: 23), )),

                    // Mapping list

                    SizedBox(width: 22,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .blue.shade200, // Set the background color here
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Mapping_list()));
                        }, child: Text('Mapping List ' ,style: TextStyle(fontSize: 23), )),

                // //Tween Animation

                    SizedBox(width: 22,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .blue.shade200, // Set the background color here
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Tween_animate()));
                        }, child: Text('Tween ' ,style: TextStyle(fontSize: 23), )),


// Ripple
                    SizedBox(width: 22,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .blue.shade200, // Set the background color here
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Ripple_animate()));
                        }, child: Text('Ripple ' ,style: TextStyle(fontSize: 23), )),

                  ],

                )
              ],
            ),
            ),





    );
  }
}
