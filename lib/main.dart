import 'package:flutter/material.dart';

void main() {
  runApp(ManageCounter());
}



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade800,
          title: const Text('Atleast something...'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Post"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        drawer: Drawer(child: Text("Side Menu")),
      ),
    );
  }
}

class ManageCounter extends StatefulWidget {
  const ManageCounter({super.key});
  @override
  State<ManageCounter> createState() => _ManageCounterState();
}

class _ManageCounterState extends State<ManageCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade800,
          title: const Text('Atleast something...'),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
        drawer: Drawer(child: Text("Side Menu")),
        floatingActionButton: FloatingActionButton(
          child: Text('Count'),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        body: Center(child: Text('$count',
        style: TextStyle(fontSize: 80),)),
      ),
    );
  }
}
