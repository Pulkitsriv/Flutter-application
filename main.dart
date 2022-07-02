
import 'package:flutter/material.dart';
import 'package:project1/Screens/HomeScreen.dart';
import 'package:project1/Screens/Screen0.dart';
import 'package:project1/Screens/Screen1.dart';

void main(){
  runApp(
    MaterialApp(
      home:HomeScreen(),
      routes: {
        'S0': (context) => Screen0(),
        'S1': (context) => Screen1(title:"status",n:_name.toString())
      },
    ),
  );
}