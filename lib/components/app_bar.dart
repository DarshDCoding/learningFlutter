import 'package:dotodo/components/dark_mode.dart';
import 'package:flutter/material.dart';

AppBar appBar (
  String title
){
  return AppBar(title: Text(title, style: TextStyle(color: Colors.deepPurple.shade100),),
      actions: [
        IconButton(onPressed: (){}, icon:DarkMode()),
        IconButton(onPressed: (){}, icon: Icon(Icons.logout, color: Colors.red.shade600,))
      ],
      backgroundColor:Colors.deepPurple.shade800,
      );
}