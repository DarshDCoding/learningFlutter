import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  List names = ["Sanju", "Mitesh", "Vineet", "Nitin"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            //big box
            Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple.shade600,
            ),
            //med box
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple.shade400,
            ),

            //small box
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple.shade200,
            )
          ],
        )
      ),
    );
  }
}
