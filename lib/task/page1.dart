import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: task(),
  ));
}

class task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
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
          Text("Enter the Invoice number",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Eg:68165/95/6',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250, bottom: 275),
              ),
              Align(
                child: Row(
                  children: [
                    Material(
                      color: Colors.white,
                      child: InkWell(
                        onTap: () {
                          //print('called on tap');
                        },
                        child: const SizedBox(
                          height: kToolbarHeight,
                          width: 275,
                          child: Center(
                            child: Text(
                              "<  Back",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Material(
                        color: Colors.blueAccent,
                        child: InkWell(
                          onTap: () {
                            //print('called on tap');
                          },
                          child: const SizedBox(
                            height: kToolbarHeight,
                            width: double.infinity,
                            child: Center(
                              child: Text(
                                'Next  >',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
