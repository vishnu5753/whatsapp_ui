import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
   Updates({super.key});

  var updatename = ["JOB HUNT", "Jobs and Career Pathway", "Budget manjeri", "WhatsApp", "Latest Ignou updates",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(updatename[index]),
          ),
        );
      }, separatorBuilder: (context,index){
        return Divider(
          color: Colors.white,
        );
      }, itemCount: updatename.length),
    );
  }
}
