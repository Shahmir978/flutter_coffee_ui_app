import 'package:flutter/material.dart';
import 'package:flutter_coffee_ui_app/Pages/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
