import 'package:dotodo/components/app_bar.dart';
import 'package:dotodo/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar("Home"),
      drawer: NavDrawer(),
    );
  }
}