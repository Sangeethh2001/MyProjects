import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: const [
          SizedBox(
            width: 0,
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.link),
              backgroundColor: Color(0xFF00695C),
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your whatsapp call'),
          ),
          SizedBox(
            height: 18,
            child: Card(
              color: Colors.grey,
              margin: EdgeInsets.zero,
              child: Text('Recent'),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1325359218/photo/portrait-of-a-young-african-man-at-studio-high-fashion-male-model-in-colorful-bright-neon.jpg?b=1&s=170667a&w=0&k=20&c=VVpagSDwuwfPa4cNHzNvljuEHzbdrvJx8wkjEYCZIT0='),
              radius: 40,
            ),
            title: Text('Sreejith '),
            subtitle: Text('--> January 3,9.30 AM'),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1338134319/photo/portrait-of-young-indian-businesswoman-or-school-teacher-pose-indoors.jpg?b=1&s=170667a&w=0&k=20&c=7wzo05o8oXxE8K7LxzFqWYZu9HbNlGev0f1Lt-Q1_6Q='),
              radius: 40,
            ),
            title: Text('Achu '),
            subtitle: Text('<-- January 2,7.30 PM'),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1365997114/photo/outdoor-portrait-of-young-african-american-backpacker.jpg?s=612x612&w=0&k=20&c=wVQLAiqSUl6rYkxZBTpQcAyRhOVtbrT7ZfVJ7vBFJKQ='),
              radius: 40,
            ),
            title: Text('Ijas '),
            subtitle: Text('<-- January 2,8.38 AM'),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1362063478/photo/female-teen-student-with-a-backpack-and-books-smiling-stock-photo.jpg?s=612x612&w=0&k=20&c=oYo3PoRNxZBhNXzSjBt6_MYI2oMP0_SOiN1NIgNeZu8='),
              radius: 40,
            ),
            title: Text('Sooraj'),
            subtitle: Text('--> January 1,2.30 PM'),
            trailing: Icon(Icons.video_call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
              radius: 40,
            ),
            title: Text('Vineeth'),
            subtitle: Text('--> January 1,11.30 AM'),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
              radius: 40,
            ),
            title: Text('Shijil'),
            subtitle: Text('--> 31/12/22,11.59 PM'),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
              radius: 40,
            ),
            title: Text('Devootty'),
            subtitle: Text('--> 30/12/22,10.15 AM'),
            trailing: Icon(Icons.video_call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
              radius: 40,
            ),
            title: Text('Revi'),
            subtitle: Text('<-- 29/12/22,5.12 PM'),
            trailing: Icon(Icons.phone),
          ),
        ]),
      ),
    );
  }
}
