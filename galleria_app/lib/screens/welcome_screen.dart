// screens/welcome_screen.dart
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // โลโก้แอป (สามารถใช้ Icon หรือ Image ได้)
              Container(
                width: 100,
                height: 100,
                color: Colors.deepPurple[100], // ใช้สีพื้นหลังตามรูป
                child: const Icon(
                  Icons.image,
                  size: 60,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'GALLERIA',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'VISUAL EXCELLENCE',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home'); // ไปยังหน้า HomeScreen
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('EXPLORE GALLERY'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}