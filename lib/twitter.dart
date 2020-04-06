
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed/domain/rss_feed.dart';
import 'package:http/http.dart' as http;

class Who extends StatefulWidget{
static String tag = 'who';
final String title = "WHO";
  @override  
  State createState()=> new WhoState();
}
class WhoState extends State<Who>{
  static const String feed = "https://rss.app/feeds/r6hlU27Hizn6Y0X2.xml";
  RssFeed _feed;
String _title;
static const String loadingFeedMsg = "Loading feed...";
static const String feedLoadErrorMsg = "Error Loading feed...";
static const String feedopenError = "Error opening feed...";
GlobalKey<RefreshIndicatorState>_refreshkey;

updateTitle(title){
  setState(() {
    _title = title;
  });
}

updateFeed(feed){
  setState(() {
    _feed = feed;
  });
}

Future<Void> openfeed(String url) async{
  if(await canLaunch(url)){
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: false,
    );
  return null;
  }
  updateTitle(feedopenError);
}

load()async {
  updateTitle(loadingFeedMsg);
  loadFeed().then((result){
    if (null == result || result.toString().isEmpty){
      updateTitle(feedLoadErrorMsg);
      return;
    }
    updateFeed(result);
    updateTitle(_feed.title);
  });
}

Future<RssFeed> loadFeed() async {
  try{
    final client = http.Client();
    final response = await client.get(feed);
     return RssFeed.parse(response.body);
  }catch(e){

  }
  return null;
}
  @override
  void initState(){
    super.initState();
    _refreshkey = GlobalKey<RefreshIndicatorState>();
    updateTitle(widget.title);
    load();
  }

  title(title){
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white
      ),
    );
  }

   subtitle(subtitle){
    return Text(
      
      subtitle,
     overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white
      ),
    );
  }

  list(){
    return 
    Container(
      color: Colors.grey,
      
      child: ListView.builder(
        itemCount: _feed.items.length,
        itemBuilder:(BuildContext context, int index){
          final item = _feed.items[index];
          return Card(
            color: Colors.black,
                      child: ListTile(
              title: title(item.title),
              subtitle:subtitle(item.pubDate) ,
             
              trailing: righticon(),
              contentPadding: EdgeInsets.all(5),
              
              onTap: () => openfeed(item.link),
            ),
          );
        }
      ),
    );
  }

isFeedEmpty(){
  return null == _feed ;
}

body(){
  return isFeedEmpty()? Center(
    child: CircularProgressIndicator(),
    
  )
  :RefreshIndicator(
    key: _refreshkey,
    child: list(),
     onRefresh: ()=> load(),);
  

}


righticon(){
  return Icon(Icons.keyboard_arrow_right,color: Colors.grey,size: 30,);
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_title),
      ),
      body: body(),
      );

    
  }
}


class Mho extends StatefulWidget{
static String tag = 'mho'; 
final String title = "Mho";
  @override  
  State createState()=> new MhoState();
}
class MhoState extends State<Mho>{
  static const String feed = "https://rss.app/feeds/tmpMKq62GWri31zu.xml";
  RssFeed _feed;
String _title;
static const String loadingFeedMsg = "Loading feed...";
static const String feedLoadErrorMsg = "Error Loading feed...";
static const String feedopenError = "Error opening feed...";
GlobalKey<RefreshIndicatorState>_refreshkey;

updateTitle(title){
  setState(() {
    _title = title;
  });
}

updateFeed(feed){
  setState(() {
    _feed = feed;
  });
}

Future<Void> openfeed(String url) async{
  if(await canLaunch(url)){
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: false,
    );
  return null;
  }
  updateTitle(feedopenError);
}

load()async {
  updateTitle(loadingFeedMsg);
  loadFeed().then((result){
    if (null == result || result.toString().isEmpty){
      updateTitle(feedLoadErrorMsg);
      return;
    }
    updateFeed(result);
    updateTitle(_feed.title);
  });
}

Future<RssFeed> loadFeed() async {
  try{
    final client = http.Client();
    final response = await client.get(feed);
     return RssFeed.parse(response.body);
  }catch(e){

  }
  return null;
}
  @override
  void initState(){
    super.initState();
    _refreshkey = GlobalKey<RefreshIndicatorState>();
    updateTitle(widget.title);
    load();
  }

  title(title){
    return Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white
      ),
    );
  }

   subtitle(subtitle){
    return Text(
      
      subtitle,
     overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white
      ),
    );
  }

  list(){
    return 
    Container(
      color: Colors.grey,
      
      child: ListView.builder(
        itemCount: _feed.items.length,
        itemBuilder:(BuildContext context, int index){
          final item = _feed.items[index];
          return Card(
            color: Colors.black,
                      child: ListTile(
              title: title(item.title),
              subtitle:subtitle(item.pubDate) ,
             
              trailing: righticon(),
              contentPadding: EdgeInsets.all(5),
              
              onTap: () => openfeed(item.link),
            ),
          );
        }
      ),
    );
  }

isFeedEmpty(){
  return null == _feed ;
}

body(){
  return isFeedEmpty()? Center(
    child: CircularProgressIndicator(),
    
  )
  :RefreshIndicator(
    key: _refreshkey,
    child: list(),
     onRefresh: ()=> load(),);
  

}


righticon(){
  return Icon(Icons.keyboard_arrow_right,color: Colors.grey,size: 30,);
}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_title,
        style:TextStyle(
        fontFamily: "BreeSerif",
        fontSize: 19,)
                ),
      ),
      body: body(),
      );

    
  }
}



// https://rss.app/feeds/tmpMKq62GWri31zu.xml