import 'package:flutter/material.dart';
import 'package:galleria_app/screens/welcome_screen.dart';
import 'package:galleria_app/screens/home_screen.dart';
import 'package:galleria_app/screens/profile_screen.dart';
import 'package:galleria_app/screens/project_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galleria App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/project_detail': (context) => const ProjectDetailScreen(),
      },
    );
  }
}