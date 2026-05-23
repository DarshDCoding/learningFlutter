import 'package:dotodo/pages/home_page.dart';
import 'package:dotodo/pages/profile_page.dart';
import 'package:dotodo/pages/settings_page.dart';
import 'package:flutter/material.dart';


void main (){
  runApp(App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      routes: {
        '/': (context) => HomePage(), 
        '/profile': (context) => PorfilePage(),
        '/settings': (context) => Settings()
      },
    );
  }
}