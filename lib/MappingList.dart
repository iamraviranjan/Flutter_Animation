import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mapping_list extends StatefulWidget {  @override
State<Mapping_list> createState() => _Mapping_listState();
}

class _Mapping_listState extends State<Mapping_list> {

  var arrData = [
    {'name' : 'Rahul',
      'mob': '9987654326',
      'unread': '3'
    },
    {'name' : 'Ravi',
      'mob': '9986554326',
      'unread': '3'
    },
    {'name' : 'Raj',
      'mob': '9987654326',
      'unread': '3'
    },
    {'name' : 'Ram',
      'mob': '9987454326',
      'unread': '3'
    },
    {'name' : 'Akash',
      'mob': '9987654326',
      'unread': '3'
    }
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping list'),

      ),

      body:Container(
        child: ListView(
            children: arrData.map((value) =>
                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(value['name'].toString()),
                  subtitle: Text(value['mob'].toString()),
                  trailing: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(value['unread'].toString())),

                ),
            ).toList()
        ),
      ),



    );
  }}


// child: ListView(
// children: arrData.map((value){
// return
// Container(
// color: Colors.blue,
// child: Text(value),
// );
// }).toList()
// ),