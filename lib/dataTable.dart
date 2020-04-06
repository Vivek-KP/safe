import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';


class Datatable extends StatefulWidget{
   static String tag = 'data';
    
    
  @override
  State createState() => new DatatableState();
    
}
class DatatableState extends State <Datatable>{

String url1 = "https://pmnrf.gov.in/en/";
String url2 = "http://apcmrf.ap.gov.in/";
String url3 = "http://www.cmrf.bih.nic.in/users/home.aspx";
String url4 = "https://www.covidssharyana.in/";
String url5 = "https://donation.cmdrf.kerala.gov.in/#donation";
String url6 = "https://manipur.gov.in/wp-content/uploads/2020/03/manipur-cm-covid-19-fund.pdf";
String url7 = "http://megcmrf.gov.in/index.htm";
String url8 = "https://chiefminister.nagaland.gov.in/chief-minister-relief-fund/";
String url9 =  "https://cmrfodisha.gov.in/";
String url10 = "https://cmrf.punjab.gov.in/";
String url11 = "http://cmrelief.rajasthan.gov.in/ContributionCovid-19.aspx";
String url12 = "https://ereceipt.tn.gov.in/cmprf/cmprf.html";
String url13 = "https://telangana.gov.in/cm-relief-fund";
String url14 = "https://www.wbhealth.gov.in/uploaded_files/corona/Serf.pdf";
String url15 = "https://www.investindia.gov.in/bip/resources/state-and-national-relief-funds-accepting-donations-covid-19";


  
DataTable dataBody(){
return DataTable(columns: [
  DataColumn(label: Text("States",
  style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 25,)
  ),
  numeric: false,
  
  ),
  DataColumn(label: Text("Links",
  style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 25,)),
  numeric: false,
  
  )
]
, rows: [
  

   DataRow(cells: [
    DataCell(
      Text("Nation",
      style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",
      style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)
      ),
      onTap: (){
        _launchinbrowser(url1);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Andhra Pradesh", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url2);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Bihar", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url3);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Haryana", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url4);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Kerala", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url5);
      }
    )
  ]),
  
   DataRow(cells: [
    DataCell(
      Text("Manipur", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url6);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Meghalaya", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url7);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Nagaland", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url8);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Odisha", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url9);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text( "Punjab", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url10);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Rajasthan", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url11);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Tamil Nadu", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url12);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Telangana", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url13);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("West Bengal", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link",style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url14);
      }
    )
  ]),

   DataRow(cells: [
    DataCell(
      Text("Details of other states", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.black,
  fontSize: 19,)),
      
    ),
    DataCell(
      Text("Link", style:TextStyle(
 fontFamily: "BreeSerif",
 color: Colors.blue,
  fontSize: 19,)),
      onTap: (){
        _launchinbrowser(url15);
      }
    )
  ]),
]
);
}

Future<Void> _launchinbrowser(String url)async{
     if(await canLaunch(url)){
       await launch(url,forceSafariVC: false,forceWebView: false,headers: <String,String>{'header_key':'header_value'});
     }else{
       throw 'could not launch $url';
     }
   }


  @override
Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: Text("Donate"),
    centerTitle: true,
  ),
  body: ListView(
    children:<Widget>[
       Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Center(
          child: dataBody(),
        )
      ],
    ),
    ],
  )
  
);
}
}


