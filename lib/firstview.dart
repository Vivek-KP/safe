import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Fview extends StatefulWidget {
  static String tag = 'home';
  
  @override
State createState() => new FviewState();
}

  

class FviewState extends State<Fview>{

    String url ="https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/when-and-how-to-use-masks";
  String url1 ="https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters";
  String url2 ="https://www.who.int/docs/default-source/coronaviruse/advice-for-workplace-clean-19-03-2020.pdf";
  String url3 ="https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/healthy-parenting";
String url4 = "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/videos";
String url5 = "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/technical-guidance/infection-prevention-and-control";
String url6 = "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/technical-guidance/guidance-for-schools-workplaces-institutions";
String url7 = "https://www.who.int/emergencies/diseases/novel-coronavirus-2019/technical-guidance/points-of-entry-and-mass-gatherings";
String url8 = "https://www.who.int/health-topics/coronavirus/who-recommendations-to-reduce-risk-of-transmission-of-emerging-pathogens-from-animals-to-humans-in-live-animal-markets";
String url9 = "https://blog.trello.com/work-from-home-guides";


  @override
  Widget build(BuildContext context){
   return 
   Container(
     color: Colors.white,
     
  child:ListView(
    children: <Widget>[
     
      SizedBox(height: 50,),
       Text("GENERAL PUBLIC ADVICES", style:TextStyle(
                  fontFamily: "Calistoga",
                  fontSize: 25,
                  color: Colors.black,
                  
                ),
                textAlign: TextAlign.center
                ),
               
      SizedBox(
height: 40,
      ),
    Cardview("When and How to use masks", url),
    Cardview("Myth buster", url1),
    Cardview("Getting Work place Ready", url2),
    Cardview("Healthy parenting", url3),
    Cardview("Videos", url4),
    Cardview("Infection prevention and control", url5),
    Cardview("Guidance for schools workplaces institutions", url6),
    Cardview("Points of entry and mass gatherings", url7),
    Cardview("Reduction of transmission from animals to humans", url8),
    Cardview("12 guides to help work from home", url9),
    ],
  )
  
    );
  }
  }

class Cardview extends StatelessWidget {
 final String text;
 final String page;
Cardview(this.text,this.page);

 Future<Void> _launchinbrowser(String url)async{
     if(await canLaunch(url)){
       await launch(url,forceSafariVC: false,forceWebView: false,
       headers: <String,String>{'header_key':'header_value'});
     }else{
       throw 'could not launch $url';
     }
   }

  @override
  Widget build(BuildContext context) {
    return Card(
              color: Colors.blue,
             child: ListTile(
            title: Text(this.text,
            style:TextStyle(
                   fontFamily: "Calistoga",
                  fontSize: 20,
                  color: Colors.white,)
            ),
           
      
            contentPadding: EdgeInsets.all(9),
            
            onTap: () {
                _launchinbrowser(this.page);
            }
          ),
    );
  }
}