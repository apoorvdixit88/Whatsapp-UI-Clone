import 'package:flutter/material.dart';
import 'package:whatsapp_uiclone/models/chat_model.dart';
class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dumyData.length,
      itemBuilder: (context,i) => Column(
        children: [
          Divider(height: 15,),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                dumyData[i].avtUrl
              ),
              maxRadius: 30,
            ),
            //leading ends
      
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dumyData[i].name,style: TextStyle(fontWeight: FontWeight.bold),
                ),
                 Text(
                  dumyData[i].time,style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
              ],
            
            ),//titke
         subtitle:  Container(
           padding: EdgeInsets.only(top: 10),
           child: Text(
                    dumyData[i].msg,style: TextStyle( fontSize: 16.0),
                  ),
         ),
          )
        ],//item builder children column ends
      )
     ); 
     //it column ends
  }

}