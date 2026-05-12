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
        body: GridView.builder(
          itemCount: 64,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), 
          itemBuilder: (context, index) =>
              Container(
                margin: EdgeInsets.all(2),
                color: Colors.deepPurple.shade800,),
          ),
      ),
    );
  }
}
