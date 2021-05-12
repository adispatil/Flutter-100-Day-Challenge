import 'package:flutter/material.dart';
import 'package:flutter_challange/screens/day_1/day_1_challange.dart';
import 'package:flutter_challange/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100 Days Challenge',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        Day1Challenge.id: (context) => Day1Challenge()
      }
    );
  }
}