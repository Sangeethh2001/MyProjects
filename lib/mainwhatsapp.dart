import 'package:flutter/material.dart';
import 'Calllog.dart';
import "chatpage.dart";
import "status.dart";

void main() {
  runApp(
    MaterialApp(
      home: Whatsapp_Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(primary: Color.fromARGB(255, 41, 122, 45)),
      ),
    ),
  );
}

class Whatsapp_Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            actions: const [
              Icon(Icons.search),
              SizedBox(
                width: 25,
              ),
              Icon(Icons.more_vert_outlined)
            ],
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(text: 'Chats'),
              Tab(text: "Status"),
              Tab(
                text: 'Call',
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Camera"),
              ),
              Chat_Page(),
              Status_Page(),
              Call_Page(),
            ],
          ),
        ));
  }
}
