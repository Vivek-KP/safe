
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Status extends StatefulWidget{
  static String tag = 'Status';
  @override
  State createState()=>StatusState();
}

class StatusState extends State<Status>{
   
   Future<Void> _launched;
   String _launchurl = "https://www.who.int/countries/ind/en/";
   String _launchurl1 = "https://www.worldometers.info/coronavirus/";
   String launch1 = "https://www.mohfw.gov.in";

   Future<Void> _launchinbrowser(String url)async{
     if(await canLaunch(url)){
       await launch(url,forceSafariVC: false,forceWebView: false,headers: <String,String>{'header_key':'header_value'});
     }else{
       throw 'could not launch $url';
     }
   }

Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text("Statistics",
      style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.white,
  fontSize: 23,)
      ),
      centerTitle: true,
    ),
      body: Stack(
    
  fit: StackFit.expand,
  children: <Widget>[
     new Image(
        image: new AssetImage("assets/back.png"),
        fit: BoxFit.cover,
        color: Colors.black26,
        colorBlendMode: BlendMode.darken,
      ),
    
     Column(
       children: <Widget>[
          SizedBox(
       height: 80,
     ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          
            Two(_launchurl,"assets/index.png"),
            Two(_launchurl1,"assets/earth.jpg")
          ]
    ),
    FlatButton(
      onPressed:(){
        _launchinbrowser(launch1);
      },
      color: Colors.blue,
       child: Text("State Wise list",
       style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.white,
  fontSize: 23,)
       ))
       ],
     ),
  

  ]
      ),

  );
  
     }
}

class Two extends StatelessWidget {
 Future<Void> _launchinbrowser(String url)async{
     if(await canLaunch(url)){
       await launch(url,forceSafariVC: false,forceWebView: false,headers: <String,String>{'header_key':'header_value'});
     }else{
       throw 'could not launch $url';
     }
   }
 final String page;
 final String img;
 
  Two(this.page,this.img);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          _launchinbrowser(this.page);
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom:50),
          child: Container(
          height:ScreenUtil().setHeight(600),
            width: ScreenUtil().setWidth(500),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 15),
            ),
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 13),
              blurRadius: 10
            ),
            
          ],
      ),
       child:Image(image: AssetImage(this.img),
          fit: BoxFit.fill,) 
          
          ),
        )
    );
  }
}
