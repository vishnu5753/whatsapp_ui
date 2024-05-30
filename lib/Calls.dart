
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  Calls({super.key});

  var image = [
    "Assets/teddy.jpeg",
    "Assets/man1.jpeg",
    "Assets/dp6.jpeg",
    "Assets/dp5.jpeg",
    "Assets/dp4.jpeg",
    "Assets/dp2.jpg",
    "Assets/dp3.jpeg"
  ];
  var name = [
    "manu",
    "ram",
    "anu",
    "varun",
    "balu",
    "Appu",
    "arun",
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
                subtitle:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_outward,color: Colors.green,size: 21,),
                    Text("Yesterday,9:30pm")
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    image[index],
                  ),
                ),
                trailing: Icon(
                  Icons.call_sharp,
                  color: Colors.grey,
                ),
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
