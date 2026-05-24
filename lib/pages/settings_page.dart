import 'package:dotodo/components/app_bar.dart';
// import 'package:dotodo/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar("Settings"),
      // drawer: NavDrawer(currentTab: 3,),
    );
  }
}