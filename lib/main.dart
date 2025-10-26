import 'package:edupro/screens/Splash_Screen.dart';
import 'package:edupro/screens/auth_screens.dart';
import 'package:edupro/screens/program_listing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EduProApp());
}

class EduProApp extends StatelessWidget {
  const EduProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EDUPRO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6A5AE0),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
      ),
      home:ProgramListScreen(),
    );
  }
}
