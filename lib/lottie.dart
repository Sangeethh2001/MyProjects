import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: lottie(),
  ));
}

class lottie extends StatelessWidget {
  var names = ["shijil", "abhinav", "hiba", "lechu"];
  var number = ['99999', '88888', '77777', '66666'];
  var images = [
    "https://cdn-icons-png.flaticon.com/128/8727/8727604.png",
    "https://cdn-icons-png.flaticon.com/128/8727/8727604.png",
    "https://cdn-icons-png.flaticon.com/128/8727/8727604.png",
    "https://cdn-icons-png.flaticon.com/128/8727/8727604.png"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Center(
              child: Text("Experience",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)))),
      body: SingleChildScrollView(
        child: Container(
          width: 1000,
          height: 1000,
          color: Colors.blue,
          child: Column(
            children: [
              Stack(
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Lottie.network(
                        "https://assets2.lottiefiles.com/packages/lf20_oojuetow.json",
                        height: 150,
                        width: 500,
                        fit: BoxFit.fill),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ExpansionTile(
                      title: Text(
                        "Flutter Internship",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("6 months +",
                            style: TextStyle(color: Colors.black)),
                      ),
                      children: [
                        Container(
                          height: 110,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text("Institute : Luminar Technolab",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text("fees      : 45000      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text("Location     : Kakkanad      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text(
                                    "Daily class duration      : 3 hours      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Lottie.network(
                        "https://assets8.lottiefiles.com/packages/lf20_dssnqvv4.json",
                        height: 150,
                        width: 500,
                        fit: BoxFit.fill),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ExpansionTile(
                      title: Text(
                        "Android Training",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("2 months",
                            style: TextStyle(color: Colors.black)),
                      ),
                      children: [
                        Container(
                          height: 110,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text("Institute : Luminar Technolab",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text("fees      : 15000      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text("Location     : Kakkanad      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text(
                                    "Daily class duration      : 2 hours      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Lottie.network(
                        "https://assets6.lottiefiles.com/packages/lf20_mlp3zxve.json",
                        height: 150,
                        width: 500,
                        fit: BoxFit.fill),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: ExpansionTile(
                      title: Text(
                        "Java Training",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text("2 months",
                            style: TextStyle(color: Colors.black)),
                      ),
                      children: [
                        Container(
                          height: 110,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text("Institute : Luminar Technolab",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text("fees      : 15000      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text("Location     : Kakkanad      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text(
                                    "Daily class duration      : 2 hours      ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
