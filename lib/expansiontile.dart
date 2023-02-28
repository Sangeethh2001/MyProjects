import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: expansiontile(),
  ));
}

class expansiontile extends StatelessWidget {
  const expansiontile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expansion Tile")),
      body: const ExpansionTile(
        title: Text("Title"),
        subtitle: Text("Expand this title"),
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("blue"),
          )
        ],
      ),
    );
  }
}
