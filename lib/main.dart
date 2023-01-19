import 'package:flutter/material.dart';
import 'package:test_project/Screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Technical Assessment',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MainScreen(title: 'Technical Assessment'),
    );
  }
}


