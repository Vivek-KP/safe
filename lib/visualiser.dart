import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class Visualiser extends StatefulWidget{
   static String tag = 'visualiser';
    
    
  @override
  State createState() => new VisualiserState();
    
}
class VisualiserState extends State <Visualiser>{

  @override
Widget build(BuildContext context){
return WebviewScaffold(

  appBar: AppBar(
    backgroundColor: Colors.red,
title: Text("Visualizer",
style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.white,
  fontSize: 23,)
),
centerTitle: true,

  ),
  url: "https://www.covidvisualizer.com",
);
}
}


