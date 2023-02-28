import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SliderTutorial(),
  ));
}

class SliderTutorial extends StatefulWidget {
  @override
  _SliderTutorialState createState() => _SliderTutorialState();
}

class _SliderTutorialState extends State<SliderTutorial> {
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slider(
            label: "Select Age",
            value: age.toDouble(),
            onChanged: (value) {
              setState(() {
                age = value.toInt();
              });
            },
            min: 5,
            max: 100,
          ),
          Text(
            "Your Age: " + age.toString(),
            style: const TextStyle(
              fontSize: 32.0,
            ),
          ),
        ],
      ),
    );
  }
}
