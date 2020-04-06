

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:safe/home.dart';
import 'package:webfeed/domain/media/content.dart';

class Flash extends StatefulWidget {
  static String tag = 'flash';
 
  
  @override
State createState() => new FlashState();
}

  

class FlashState extends State<Flash>{
@override
void initState(){
  super.initState();
  Timer(Duration(seconds: 5), ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (BuildContext context)=>Home()))
    );
}
@override
Widget build(BuildContext context){
return Scaffold(
  body: Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: Colors.white
          
        ),
        
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              
                 CircleAvatar(
                  radius: 80,
                  child: Image(image: AssetImage("assets/logo.png")),
                ),
              
              Text("Safe 20",style:TextStyle(
        fontFamily: "Calistoga",
        fontSize: 25,)),

       
        
                ],
              ),
              
            )),
            
          CircularProgressIndicator()
        ],
      ),
        Padding(
          padding: const EdgeInsets.only(top: 450),
          child: Image(image: AssetImage("assets/ieee.png"),
            height: 70),
        )
    ],
  ),
);
}
}