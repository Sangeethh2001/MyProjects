import 'package:flutter/material.dart';

class Chat_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: const [
            SizedBox(
              width: 0,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1391365592/photo/beautiful-afro-woman.jpg?b=1&s=170667a&w=0&k=20&c=VxathWKg4S9MhZFPhxzRgdq34MrV1PDhRMtIT25LOus='),
                radius: 40,
              ),
              title: Text('Ardra '),
              subtitle: Text(' Where are you?'),
              trailing: Text('9.30 AM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1325359218/photo/portrait-of-a-young-african-man-at-studio-high-fashion-male-model-in-colorful-bright-neon.jpg?b=1&s=170667a&w=0&k=20&c=VVpagSDwuwfPa4cNHzNvljuEHzbdrvJx8wkjEYCZIT0='),
                radius: 40,
              ),
              title: Text('Manu '),
              subtitle: Text('Hello'),
              trailing: Text('9.28 AM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1338134319/photo/portrait-of-young-indian-businesswoman-or-school-teacher-pose-indoors.jpg?b=1&s=170667a&w=0&k=20&c=7wzo05o8oXxE8K7LxzFqWYZu9HbNlGev0f1Lt-Q1_6Q='),
                radius: 40,
              ),
              title: Text('Mariya '),
              subtitle: Text(' Call you back!'),
              trailing: Text('9.25 AM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1365997114/photo/outdoor-portrait-of-young-african-american-backpacker.jpg?s=612x612&w=0&k=20&c=wVQLAiqSUl6rYkxZBTpQcAyRhOVtbrT7ZfVJ7vBFJKQ='),
                radius: 40,
              ),
              title: Text('Johan '),
              subtitle: Text('Its so funny'),
              trailing: Text('9.10 AM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1362063478/photo/female-teen-student-with-a-backpack-and-books-smiling-stock-photo.jpg?s=612x612&w=0&k=20&c=oYo3PoRNxZBhNXzSjBt6_MYI2oMP0_SOiN1NIgNeZu8='),
                radius: 40,
              ),
              title: Text('Aiswarya'),
              subtitle: Text('Hi dear,How are you?'),
              trailing: Text('8.58 AM '),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                radius: 40,
              ),
              title: Text('Amruz'),
              subtitle: Text('Miss you da'),
              trailing: Text('8.25 AM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                radius: 40,
              ),
              title: Text('Shibina'),
              subtitle: Text('Whatsup mahn?'),
              trailing: Text('7.40 AM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1329936184/photo/head-shot-portrait-of-smiling-businesswoman-intern-looking-at-camera.jpg?s=612x612&w=0&k=20&c=cCeWt0GYUtcFsGFi6hTFci-d5KZY6FAd_UchY9V5aSo='),
                radius: 40,
              ),
              title: Text('Anju'),
              subtitle: Text('Hi da'),
              trailing: Text('7.20 AM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/544979402/photo/portrait-of-a-serious-young-man.jpg?s=612x612&w=is&k=20&c=tfirn0XvERh6uXGL3J6LSvBFQpG5IoQdkOQc5W4RlcM='),
                radius: 40,
              ),
              title: Text('Anand'),
              subtitle: Text('Hello'),
              trailing: Text('7.06 AM'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1437324946/photo/beautiful-woman.jpg?b=1&s=170667a&w=0&k=20&c=9H258Nk33WZ5DCF-wdPwScn7vZsvhyGQTD2NZgHmHsE='),
                radius: 40,
              ),
              title: Text('Parvathy'),
              subtitle: Text('Hey dear'),
              trailing: Text('6.06 AM'),
            ),
          ],
        ),
      ),
    );
  }
}
