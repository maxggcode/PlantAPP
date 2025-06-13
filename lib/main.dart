import 'package:flutter/material.dart';
import 'homepage.dart';
import 'signup.dart';
import 'sign_in.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plant",
      home: homepage(),
    );
  }
}