import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to chrome")),
      body: ListView(
        children: const [
          ListTile(
            title: Text("Hello"),
            subtitle: Text("Description"),
            leading: Image(
              image: AssetImage("assets/images/image2.jpg"),
            ),
            trailing: Icon(Icons.phone),
          ),
          Text("Wow"),
          Text("hooo")
        ],
      ),
    );
  }
}
