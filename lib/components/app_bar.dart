import 'package:dotodo/components/dark_mode.dart';
import 'package:flutter/material.dart';

AppBar appBar (
  String title
){
  return AppBar(title: Text(title, style: TextStyle(color: Colors.deepPurple.shade100),),
      actions: [
        IconButton(onPressed: (){}, icon:DarkMode() )
      ],
      backgroundColor:Colors.deepPurple.shade800,
      );
}