import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

import 'ListPage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /// set color for screen background
        // color: Colors.red,
        /// set image for screen background
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         fit:BoxFit.cover,
        //         image:AssetImage(
        //             "assets/images/imag.jpg"))),
        /// set gradient for screen background
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topRight,
                colors: [
              Color.fromARGB(255, 14, 72, 171),
              Colors.red,
              Colors.green
            ])),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image(image: AssetImage("assets/icons/tiger.png"))
              Image.asset("assets/icons/icon2.png"),

              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to CHROMA",
                style: TextStyle(fontSize: 40, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
