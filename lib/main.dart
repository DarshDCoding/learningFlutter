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
        backgroundColor: Colors.deepPurple.shade200,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade800,
          title: Text(
            "DoToDo",
            style: TextStyle(color: Colors.deepPurple.shade50),
          ),
          leading: Icon(Icons.menu, color: Colors.deepPurple.shade50),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode, color: Colors.deepPurple.shade50),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.deepPurple.shade50),
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            spacing: 20,
            children: [
              //task 1
              Container(
                height: 50,
                width: 380,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.deepPurple.shade400,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Task 1...',
                        style: TextStyle(
                          color: Colors.deepPurple.shade50,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple.shade50,
                        border: Border.all(color: Colors.deepPurple.shade50),
                      ),
                    ),
                  ],
                ),
              ),
              //task 2
              Container(
                height: 50,
                width: 380,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.deepPurple.shade400,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Task 1...',
                        style: TextStyle(
                          color: Colors.deepPurple.shade50,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple.shade50,
                        border: Border.all(color: Colors.deepPurple.shade50),
                      ),
                    ),
                  ],
                ),
              ),
              //task 3
              Container(
                height: 50,
                width: 380,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.deepPurple.shade400,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Task 1...',
                        style: TextStyle(
                          color: Colors.deepPurple.shade50,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.deepPurple.shade50,
                        border: Border.all(color: Colors.deepPurple.shade50),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
        NavigationBar(destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "home"),
          NavigationDestination(icon: Icon(Icons.add), label: "add"),
          NavigationDestination(icon: Icon(Icons.logout), label: "logout")
        ],
        backgroundColor: Colors.deepPurple.shade100,),
      ),
    );
  }
}