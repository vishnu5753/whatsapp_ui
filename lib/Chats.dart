import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  var name = ["manu", "ram", "anu", "varun", "balu", "Appu", "arun"];
  var Message = [
    "hai",
    "Hello ",
    "Hy",
    "Hi",
    "haaaaaiim",
    "hikjnjk",
    "kjjbhubn"
  ];
  var image = [
    "Assets/teddy.jpeg",
    "Assets/man1.jpeg",
    "Assets/dp6.jpeg",
    "Assets/dp5.jpeg",
    "Assets/dp4.jpeg",
    "Assets/dp2.jpg",
    "Assets/dp3.jpeg"
  ];
  var time = [
    "now",
    "9:30pm",
    "7:01am",
    "8:21am",
    "Yesterday",
    "12/8/2023",
    "11/4/2023",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              elevation: 0.2,
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(Message[index]),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),
                ),
                trailing: Text(time[index]),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.white,
            );
          },
          itemCount: name.length),
    );
  }
}
