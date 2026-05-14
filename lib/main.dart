import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

Widget crateButton({
  required IconData icon,
  required VoidCallback tapp,
  required Color color,
}) {
  return Material(
    borderRadius: BorderRadius.circular(20),
    // color: color,
    child: GestureDetector(
      onTap: tapp,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Icon(icon),
      ),
    ),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  Color culler = Colors.deepPurple.shade600;
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
              color: culler,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$counter",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //add
                      crateButton(
                        icon: Icons.add,
                        tapp: () => {
                          setState(() {
                            counter++;
                            culler = Colors.green.shade600;
                          }),
                        },
                        color: Colors.green.shade200,
                      ),
                      //remove
                      crateButton(
                        icon: Icons.remove,
                        tapp: () => {
                          setState(() {
                            counter--;
                            culler = Colors.red.shade600;
                          }),
                        },
                        color: Colors.red.shade200,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}