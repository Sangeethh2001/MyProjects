import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: task2(),
  ));
}

class task2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.blueAccent,
        ),
        title: Text(
          "Add New invoice",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 20),
          ),
          Container(height: 250, child: BankBody()), //grid view details
          Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.file_copy,
                  color: Colors.blue,
                  size: 20,
                ),
                Text(
                  "My invoices",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ],
            ),
          ),
          Expanded(flex: 6, child: Bottomlist()), //Last Transaction list
        ],
      ),
    );
  }
}

class BankBody extends StatefulWidget {
  @override
  State<BankBody> createState() => _BankBodyState();
}

class _BankBodyState extends State<BankBody> {
  List listile = ["Scan", "Upload Bill"];
  List iconsbank = [
    "https://cdn3.iconfinder.com/data/icons/delivery-and-logistics-1/24/logistics-31-512.png",
    "https://cdn2.iconfinder.com/data/icons/buno-ui-interface/32/__arrow_up_upload-512.png"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Scaffold(
          body: Card(
            child: Container(
              width: 120,
              height: 70,
              child: Column(
                children: [
                  Image(
                    height: 160,
                    width: 160,
                    image: NetworkImage(iconsbank[index]),
                    alignment: Alignment.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(listile[index],
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 3,
    );
  }
}

class datacard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 15,
      left: 15,
      child: SizedBox(
        height: 160,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 60),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Bottomlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
          child: Card(
            child: Container(
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 75,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text("MyG Kakkanad"),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "Invoice no:9685645346",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "1320",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text("Allen Solly Edappally"),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "Invoice No:9685633333",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "780",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text("Nike Edappally"),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "invoice No:389892898938",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "2300",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text("Dessi Cuppa"),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "invoice No:38800028838",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "180",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text("Zudio Kakkanad"),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "invoice No:11092939999",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "690",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Column(
                          children: const [
                            Text("Ayur Pharma Kochi"),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "invoice No:38989289833",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "320",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: 7,
    );
  }
}
