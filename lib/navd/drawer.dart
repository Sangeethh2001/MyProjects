import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Drawer"),
        ),
        drawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Color.fromARGB(255, 51, 205, 130)),
          child: Drawer(
              child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "JOSEPH KURUVILA",
                ),
                accountEmail: const Text("josephkuruvila66@gmail.com"),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    print("Current Profile");
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img1.jpg"),
                  ),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.pexels.com/photos/290595/pexels-photo-290595.jpeg")),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          )),
        ));
  }
}
