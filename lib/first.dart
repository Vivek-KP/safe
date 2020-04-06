import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';


class First extends StatefulWidget {
  static String tag = 'first';
  
  @override
State createState() => new FirstState();
}

  

class FirstState extends State<First>{
  




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
ListView(
  children: <Widget>[
    
    Container(
      color: Colors.red,
      // child: Text("GENERAL PUBLIC ADVICES", style:TextStyle(
      //             fontFamily: "Calistoga",
      //             fontSize: 25,
      //             color: Colors.white,
                  
      //           ),
      //           textAlign: TextAlign.center
      //           ),
      //            color: Colors.grey,
      
      // child: ListView.builder(
      //   itemCount: 10,
      //   itemBuilder:(BuildContext context, int index){
          
      //     return Card(
      //       color: Colors.black,
      //                 child: ListTile(
      //         title:Text("data") ,
              
             
              
      //         contentPadding: EdgeInsets.all(5),
              
      //         onTap: (){}
      //       ),
      //     );
      //   }
      // ),
    ),
    //  SizedBox(
    //               height: 20,
    //             ),
    //     Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: <Widget>[
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: <Widget>[
    //      Blue("When and How to use masks",url),
    //      Blue("Myth buster", url1)
    //           ]
    //           ),
    //           SizedBox(
    //               height: 20,
    //             ),
    //            Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: <Widget>[
    //              Blue("Getting Work place Ready",url2),
    //      Blue("Healthy parenting", url3)
    //           ]
    //           ),
    //           SizedBox(
    //               height: 20,
    //             ),
    //            Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: <Widget>[
    //      Blue("Videos", url4),
    //       Blue("infection prevention and control", url5)
    //           ]
    //           ),
    //            SizedBox(
    //               height: 20,
    //             ),
    //            Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: <Widget>[
    //      Blue("guidance for schools workplaces institutions", url6),
    //       Blue("points of entry and mass gatherings", url7)
    //           ]
    //           ),
    //            SizedBox(
    //               height: 20,
    //             ),
    //            Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: <Widget>[
    //      Blue("Reduction of transmission from animals to humans ", url8),
    //       Blue("12 guides to help work from home ", url9)
    //           ]
    //           ),
    //           SizedBox(
    //        height: 20,
    //           ),
    //           Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: <Widget>[
    //            Text("We inform you to wash hands and drink water",
    //            style:TextStyle(
    //               fontFamily: "BreeSerif",
    //               fontSize: 28,
    //               color: Colors.white,
    //               fontStyle: FontStyle.italic
    //             ),
    //           ),
    //           Text("#BREAK THE CHAIN",
    //            style:TextStyle(
    //               fontFamily: "BreeSerif",
    //               fontSize: 28,
    //               color: Colors.white,
    //               fontStyle: FontStyle.italic
    //             ),
    //           ),
    //            Text("#STAY SAFE",
    //             style:TextStyle(
    //               fontFamily: "BreeSerif",
    //               fontSize: 28,
    //               color: Colors.white,
    //               fontStyle: FontStyle.italic
    //             ),
    //            )
    //         ],
    //           )
    //           ]
    //           )
  ],
);
    

  }

}

// class Blue extends StatelessWidget {
  
//   Future<Void> _launchinbrowser(String url)async{
//      if(await canLaunch(url)){
//        await launch(url,forceSafariVC: false,forceWebView: false,headers: <String,String>{'header_key':'header_value'});
//      }else{
//        throw 'could not launch $url';
//      }
//    }

//  final String tst;
//  final String page;
//   Blue(this.tst,this.page);
//    @override
//   Widget build(BuildContext context) {
// return InkWell(
//         onTap: (){
//          _launchinbrowser(this.page);
//         },
//             child: Container(
          
//           height:ScreenUtil().setHeight(520),
//           width: ScreenUtil().setWidth(500),
//           color: Colors.black45,
         
//           child:
      
//               Center(
//                 child: Text(this.tst,
//                 style:TextStyle(
//                   fontFamily: "BreeSerif",
//                   fontSize: 22,
//                   color: Colors.blue,
//                   fontStyle: FontStyle.italic
//                 ),),
//               ),
              
          
//             )    
        
//       );
    
//   }
// }