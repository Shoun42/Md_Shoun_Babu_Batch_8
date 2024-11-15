import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () {MySnackBar("You Tab on add menu",context);},
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {MySnackBar("You Tab on settings menu",context);},
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {MySnackBar("You Tab on call menu",context);},
            icon: Icon(Icons.call),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileItem(
              icon: Icons.icecream,
              text: 'Ice cream is very delicious right?',
            ),
            SizedBox(height: 20),
            ProfileItem(
              icon: Icons.code,
              text: 'Programming is not boring if you love it',
            ),
            SizedBox(height: 20),
            ProfileItem(
              icon: Icons.egg,
              text: 'If you submit code directly copy from chatgpt then mark will 0',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ProfileItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.purple[100],
          child: Icon(
            icon,
            size: 50,
            color: Colors.purple,
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}