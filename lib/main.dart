import 'package:app/counter.dart';
import 'package:app/home_screen.dart';
import 'package:app/login_screen.dart';
import 'package:app/messenger_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter(),
    
    );
  }
}
