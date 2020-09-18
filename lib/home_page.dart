import 'package:flutter/material.dart';
import 'package:whatsapp_uiclone/pages/call.dart';
import 'package:whatsapp_uiclone/pages/status.dart';

import 'pages/camera.dart';
import 'pages/chat.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
     void initState(){
          super.initState();
          _tabController =TabController(length: 4, vsync: this, initialIndex: 1);
          }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Whatsapp"),
        backgroundColor: Theme.of(context).primaryColor,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS")
          ],
        ),
        actions: [Icon(Icons.search),Padding(padding: const EdgeInsets.symmetric(
          horizontal: 5.0
        )),Icon(Icons.more_vert)],
      ),
      body: TabBarView(
        controller: _tabController,
        children: 
      [
        Camera(),
         Chat(),
        Status(),
        Call(),
       
        
       
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message, color: Colors.white,),
      ),
    );
  }
}