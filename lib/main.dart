
import 'package:safe/dataTable.dart';
import 'package:safe/flash.dart';
import 'package:safe/firstview.dart';

import 'second.dart';
import 'status.dart';
import 'visualiser.dart';
import 'package:flutter/material.dart';
import 'package:safe/home.dart';
import 'package:safe/second.dart';
import 'package:safe/twitter.dart';
// import 'home.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Visualiser.tag:(context)=>Visualiser(),
    Second.tag:(context)=>Second(),
    Status.tag:(context)=>Status(),
    Who.tag:(context)=>Who(),
    Mho.tag:(context)=>Mho(),
    Datatable.tag:(context)=>Datatable(),
    Flash.tag:(context)=>Flash(),
    
   };
  @override
Widget build(BuildContext context) {
    return  
    new MaterialApp(
        
        debugShowCheckedModeBanner: false,
        
      
        theme: new ThemeData(
          primarySwatch: Colors.blue
          
        ),
        home: Flash(),
        routes: routes,
        
    ); 
  
  }  
  }
  