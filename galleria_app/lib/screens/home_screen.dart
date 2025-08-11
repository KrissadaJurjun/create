import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../constant/app_constant.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _pageIndex = 0;
  final _pages = [
    Center(child: Text('Home Page', style: headingTextStyle,)),
    Center(child: Text('Search Page', style: headingTextStyle,)),
    Center(child: Text('Notifications Page')),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Light grey background

      body: _pages[_pageIndex], // Display the selected page
     // NavBar
     bottomNavigationBar: CurvedNavigationBar(
     backgroundColor: Colors.transparent,
     color: const Color.fromARGB(255, 255, 255, 255),
     animationDuration: Duration(milliseconds: 300), //Added

     items: [
          Icon(Icons.home, color: secondaryColor, size: 30,),
          Icon(Icons.search, color: secondaryColor, size: 30,),
          Icon(Icons.notifications, color: secondaryColor, size: 30,),
          Icon(Icons.person,  color: secondaryColor, size: 30,),
     ],

     onTap: (index) {
       // Handle navigation
       setState(() {
          _pageIndex = index;
       });
     },

     ), // CurvedNavigationBar
    );
  }
}