import 'package:flutter/material.dart';


class DarkMode extends StatefulWidget {
  const DarkMode({super.key});

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool isDark = false;
  Icon themeControl = Icon(Icons.dark_mode, color: Colors.amber.shade300,);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
      themeControl = isDark? Icon(Icons.dark_mode, color: Colors.amber.shade300,): Icon(Icons.light_mode, color: Colors.amber.shade300,) ;
      isDark = isDark ? false: true;
      });
    }, icon: themeControl);
  }
}