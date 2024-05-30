import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Community extends StatelessWidget {
   Community({super.key});

   var names=["Community","Announcements","Brand Coart","TJV","Smart Career",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.separated(itemBuilder: (context,index){
       return Card(
         child: ListTile(
         title: Text(names[index]),
         ),
       );
      }, separatorBuilder: (context,index){
        return Divider(
          color: Colors.white,
        );
      }, itemCount: names.length),
    );
  }
}
