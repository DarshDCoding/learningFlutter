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
        // backgroundColor: Colors.deepPurple.shade200,
        body: 
        Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //Expanded can be used to make all items take equal space in given container by removing height and widhth from every children.
              //box 1
              Expanded( //expands to take all space in whatever dimention in missing i.e. height/width
                child: Container(
                  color: Colors.amber.shade200,
                ),
              ),
              //box 2
              Expanded(
                flex: 3, //height ratio in comparison with other childrens
                child: Container(
                  color: Colors.amber.shade600,
                ),
              ),
              //box 3
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber.shade800,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}