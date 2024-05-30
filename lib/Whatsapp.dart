import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Calls.dart';

import 'Chats.dart';
import 'Communities.dart';
import 'Updates.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsAppUi(),));
}



class WhatsAppUi extends StatelessWidget {
  const WhatsAppUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.green[700],
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.qr_code_scanner),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(
              position: PopupMenuPosition.under,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("New group"),
                  ),
                  PopupMenuItem(
                    child: Text("New broadcast"),
                  ),
                  PopupMenuItem(
                    child: Text("Linked devices"),
                  ),
                  PopupMenuItem(
                    child: Text("Starred messages"),
                  ),
                  PopupMenuItem(
                    child: Text("Payments"),
                  ),
                  PopupMenuItem(
                    child: Text("Settings"),
                  ),
                ];
              },
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: "Chats",
              ),
              Tab(
                icon: Icon(Icons.update),
                text: "Updates",
              ),
              Tab(
                icon: Icon(Icons.people),
                text: "Communities",
              ),
              Tab(
                icon: Icon(Icons.call_sharp),
                text: "Calls",
              ),
            ],
          ),
        ),
        body:TabBarView(children: [
          Chats(),
          Updates(),
          Community(),
          Calls(),
        ],)
      ),
    );
  }
}