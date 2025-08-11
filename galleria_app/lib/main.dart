// main.dart
import 'package:flutter/material.dart';
import 'package:galleria_app/screens/home_screen.dart' show HomeScreen;
import 'package:galleria_app/screens/profile_screen.dart' show ProfileScreen;
import 'package:galleria_app/screens/welcome_screen.dart' show WelcomeScreen;
import 'package:galleria_app/screens/home_screen.dart'; // หรือชื่อไฟล์ที่คุณตั้ง
import 'package:galleria_app/screens/profile_screen.dart'; // หรือชื่อไฟล์ที่คุณตั้ง
import 'package:galleria_app/screens/welcome_screen.dart'; // เพิ่มไฟล์ welcome_screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
        primarySwatch: const Color.fromARGB(255, 66, 152, 238),
      );
    return MaterialApp(
      title: 'Galleria App',
      theme: themeData,
      initialRoute: '/', // กำหนดหน้าแรกเป็น Welcome Screen
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        // หากต้องการเพิ่มหน้า Project Detail Screen ก็สามารถเพิ่มเส้นทางได้
        // '/project_detail': (context) => const ProjectDetailScreen(), 
      },
    );
  }
}