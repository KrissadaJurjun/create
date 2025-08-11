import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

// The main entry point of the application
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Galleria App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Inter', // Using a clean, modern font
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter'),
        ),
      ),
      home: const WelcomeScreen(), // Start with the Welcome Screen
    );
  }
}