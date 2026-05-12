import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
            color: Colors.deepPurple.shade600,
            borderRadius: BorderRadius.circular(25)
            ),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$counter",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //add
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green.shade200                           
                          ),
                          child: Icon(Icons.add),
                        ),
                      ),
                        
                      //remove
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            counter--;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red.shade200                           
                          ),
                          child: Icon(Icons.remove),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
