import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';

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
        primarySwatch: Colors.green,
        fontFamily: 'Inter', // Using a clean, modern font
        scaffoldBackgroundColor: const Color.fromRGBO(164, 246, 211, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 106, 169, 113),
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