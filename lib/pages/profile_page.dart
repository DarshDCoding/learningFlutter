import 'package:dotodo/components/app_bar.dart';
import 'package:dotodo/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class PorfilePage extends StatelessWidget {
  const PorfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar("Profile"),
      drawer: NavDrawer(currentTab: 2,),
    );
  }
}