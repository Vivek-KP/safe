import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe/dataTable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'visualiser.dart';
import 'status.dart';
import 'twitter.dart';
class Second extends StatefulWidget {
  static String tag = 'Second';
 
  
  @override
State createState() => new SecondState();
}

  

class SecondState extends State<Second>{
  
 
   String _launchurl1 = "https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf";
 String _launchurl2 = "https://www.mohfw.gov.in";
 String _launchurl3 = "https://www.who.int";
 String _launchurl4 = "https://api.whatsapp.com/send?phone=919013151515&text=Namaste&source=&data=";
 

  Future<Void> _launchinbrowser(String url)async{
     if(await canLaunch(url)){
       await launch(url,forceSafariVC: false,forceWebView: false,headers: <String,String>{'header_key':'header_value'});
     }else{
       throw 'could not launch $url';
     }
   }

  Widget build(BuildContext context){
    ScreenUtil.init(context);
return 
Stack(
  fit: StackFit.expand,
   children: <Widget>[
          new Image(
        image: new AssetImage("assets/back.png"),
        fit: BoxFit.cover,
        color: Colors.black26,
        colorBlendMode: BlendMode.darken,
      ),
         ListView(
       
      children: <Widget>[

         SizedBox(
                  height: ScreenUtil().setHeight(100),
                ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               
                Blocks("assets/world.png","Covid Visualizer",Visualiser.tag),
                  Blocks("assets/graph.jpg","Statistics",Status.tag),
                  
              ],
            ),
            SizedBox(height: 10,),
            
            SizedBox(
                  height: ScreenUtil().setHeight(100),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               
                Blocks("assets/twitter-logo.jpg","WHO",Who.tag),
                Blocks("assets/twitter-logo.jpg","MOH",Mho.tag),  
              ],
            ),

           

             SizedBox(
                  height: ScreenUtil().setHeight(100),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               
                 Ontap("assets/care.jpg","Help Center",_launchurl1),
                 Blocks("assets/don.jpg","Donate",Datatable.tag), 
              ],
            ),
             SizedBox(
                  height: ScreenUtil().setHeight(100),
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
               Text("Direct link to the CORONA helpline whatsapp bot channel",
              style:TextStyle(
                fontFamily: "Gelasio",
                fontSize: 22,
                color: Colors.white,
                
              ),
              ),
              FlatButton(onPressed: (){
                _launchinbrowser(_launchurl4);
              },
              
               child: Text("Send Message", style:TextStyle(
                fontFamily: "Gelasio",
                fontSize: 23,
                color: Colors.white
              ),),
               
               textColor: Colors.white,
               splashColor: Colors.lightGreen,
              color: Colors.green),

           
            ],
          ),
           SizedBox(
                  height: ScreenUtil().setHeight(100),
                ),
          Column(
            children: <Widget>[
               Text("For more information click on the links",
              style:TextStyle(
                fontFamily: "Gelasio",
                fontSize: 23,
                color: Colors.white,
                
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                    FlatButton(onPressed: (){
                   _launchinbrowser(_launchurl3);
                 },
                   child: Text("WHO"),
                   textColor: Colors.white,
                   splashColor: Colors.blueAccent,
                  color: Colors.blue),
                
                  FlatButton(onPressed: (){
                    _launchinbrowser(_launchurl2);
                  },
                   child: Text("MOH"),
                   textColor: Colors.white,
                   splashColor: Colors.blueAccent,
                  color: Colors.blue),
                 
              ],
        ),
            ],
          ),
        
      ],
),
   ]
         
   )
   ]
);
   
  }

}

class Blocks extends StatelessWidget {
 final String img;
 final String tst;
 final String page;
  Blocks(this.img,this.tst,this.page);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(this.page);
        },
            child: Container(
          
          height:ScreenUtil().setHeight(650),
          width: ScreenUtil().setWidth(500),
          color: Colors.blue,
          
          child: Column(
            children: <Widget>[
              Container(
                height:ScreenUtil().setHeight(450),
          width: ScreenUtil().setWidth(500),
          child:Image(image: AssetImage(this.img),
          fit: BoxFit.fill,) 
          
              ),
                SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              Text(this.tst,
              style:TextStyle(
                fontFamily: "BreeSerif",
                fontSize: 19,
                color: Colors.white
              ),),
              SizedBox(
              height: 10,
              )
            ],
          ),
        ),
      );
    
  }
}

class Ontap extends StatelessWidget {
  
  Future<Void> _launchinbrowser(String url)async{
     if(await canLaunch(url)){
       await launch(url,forceSafariVC: false,forceWebView: false,headers: <String,String>{'header_key':'header_value'});
     }else{
       throw 'could not launch $url';
     }
   }
 final String img;
 final String tst;
 final String page;
  Ontap(this.img,this.tst,this.page);
   @override
  Widget build(BuildContext context) {
return InkWell(
        onTap: (){
         _launchinbrowser(this.page);
        },
            child: Container(
          
          height:ScreenUtil().setHeight(600),
          width: ScreenUtil().setWidth(500),
          color: Colors.blue,
          
          child: Column(
            children: <Widget>[
              Container(
                height:ScreenUtil().setHeight(450),
          width: ScreenUtil().setWidth(500),
          child:Image(image: AssetImage(this.img),
          fit: BoxFit.fill,) 
          
              ),
                SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              Text(this.tst,
              style:TextStyle(
                fontFamily: "BreeSerif",
                fontSize: 19,
                color: Colors.white
              ),),
              
            ],
          ),
        ),
      );
    
  }
}
