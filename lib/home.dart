import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'firstview.dart' as first;
import 'second.dart' as second;

class Home extends StatefulWidget {
  static String tag = 'home';
  
  @override
State createState() => new HomeState();
}

  

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
     return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: GradientAppBar(
          title: Text("SAFE",style:TextStyle(
            fontSize: 40,
            fontFamily:'Calistoga',
             color: Colors.black
          ),),
          
          centerTitle: true,
          gradient: LinearGradient(colors: [Colors.deepOrangeAccent, Colors.orange]),
          
          bottom: TabBar(tabs: <Widget>[
            
            Tab(
              
              icon: Icon(Icons.home,color: Colors.black,),
              
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.info,color: Colors.black,),
              text: "Information",
            )
          ]),
        ),
       body:TabBarView(children:<Widget>[
         new first.Fview(),
         new second.Second()
       ]
        ) 
       
     

      ) 
    );
  }}

  

// https://rss.app/feeds/OrukFB2wiS5qa5TU.xml-total
