import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StaggeredGrid(),
  ));
}

class StaggeredGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
          crossAxisCount: 4,
          MainAxisAlignment: 4,
          crossAxisSpacing: 4,
          staggeredTiles: const [],
          children: []),
    );
  }

  static count(
      {required int crossAxisCount,
      required int MainAxisAlignment,
      required int crossAxisSpacing,
      required List staggeredTiles,
      required List children}) {}
}

class Customchild extends StatelessWidget {
  final Color? bgcolor;
  final IconData iconData;

  Customchild({required this.bgcolor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(
        iconData,
        color: Colors.red,
      ),
    );
  }
}
