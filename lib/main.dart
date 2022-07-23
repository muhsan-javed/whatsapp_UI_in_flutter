import 'package:flutter/material.dart';
import 'package:whatsapp_ui_flutter/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: HomeScreen(),
    );
  }
}

