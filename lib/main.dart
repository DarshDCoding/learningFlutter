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
          title: Text("DoToDo",
          style: TextStyle(color: Colors.amber.shade50)),
          backgroundColor: Colors.deepPurple.shade800,
          
          //for box shadow....
          shadowColor: Colors.deepPurple.shade300,
          elevation: 5,

          //icon on left (use leading)
          leading: Icon(Icons.menu,
          color: Colors.amber.shade50,),
          actions: [IconButton(onPressed: ()=>{}, icon: Icon(Icons.menu))],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            // padding: EdgeInsets.only(top: 40, left: 40),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade800,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                Icons.favorite_sharp,
                color: Colors.red.shade500,
                size: 48,
              ),
            ),
          ),
        ),
      ),
    );
  }
}