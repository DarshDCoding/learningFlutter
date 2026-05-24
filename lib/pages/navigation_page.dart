import 'package:dotodo/pages/home_page.dart';
import 'package:dotodo/pages/profile_page.dart';
import 'package:dotodo/pages/settings_page.dart';
import 'package:flutter/material.dart';


class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  
  final List _pages = [
    HomePage(),
    PorfilePage(),
    Settings()
  ];

  int _selectedIndex = 0;

  void _navigatorBar (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ]),
    );
  }
}