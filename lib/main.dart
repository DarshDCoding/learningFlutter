import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          // scrollDirection: Axis.horizontal, //be default Axis.vertical
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(color: Colors.amber.shade200),
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(color: Colors.amber.shade400),
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(color: Colors.amber.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
