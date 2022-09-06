import 'package:flutter/material.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
      home: const ProfilePage(),
    );
  }
}