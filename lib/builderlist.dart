import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_Separated(),
  ));
}

class List_with_Separated extends StatelessWidget {
  var name = ["jim", "Ram", "Ali", "Priya", "Sandra", "Peter"];
  var Ph_no = [
    9895234551,
    7591425313,
    9961909789,
    0484234132,
    8251425369,
    9876543299
  ];
  var colors = [300, 400, 500, 600, 700, 800];
  var images = [
    "assets/images/image2.jpg",
    "assets/images/img1.jpg",
    "assets/images/img1.jpg",
    "assets/images/image2.jpg",
    "assets/images/image2.jpg",
    "assets/images/img1.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST WITH SEPARATED"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Image.asset(images[index]),
              color: Colors.red[colors[index]],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 6,
              color: Colors.black54)[colors[index]],
       )   );
          },
          itemCount: images.length),
    );
  }
}
