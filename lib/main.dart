import 'package:flutter/material.dart';
import 'package:flutter_challange/screens/day_1/day_1_screen1.dart';
import 'package:flutter_challange/screens/day_1/day_1_screen2.dart';
import 'package:flutter_challange/screens/day_2/screen_1.dart';
import 'package:flutter_challange/screens/day_2/screen_2.dart';
import 'package:flutter_challange/screens/day_2/screen_3.dart';
import 'package:flutter_challange/screens/day_3/screen_1.dart';
import 'package:flutter_challange/screens/day_3/screen_2.dart';
import 'package:flutter_challange/screens/day_3/screen_3.dart';
import 'package:flutter_challange/screens/day_4/screen_1.dart';
import 'package:flutter_challange/screens/day_4/screen_2.dart';
import 'package:flutter_challange/screens/day_4/screen_3.dart';
import 'package:flutter_challange/screens/home_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));

  runApp(MyApp());
}

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
          Day1ChallengeScreen1.id: (context) => Day1ChallengeScreen1(),
          Day1Screen2.id: (context) => Day1Screen2(),
          Day2HomeScreen.id: (context) => Day2HomeScreen(),
          Day2Screen2.id: (context) => Day2Screen2(),
          Day2Screen3.id: (context) => Day2Screen3(),
          Day3Screen1.id: (context) => Day3Screen1(),
          Day3Screen2.id: (context) => Day3Screen2(),
          Day3Screen3.id: (context) => Day3Screen3(),
          Day4Screen1.id: (context) => Day4Screen1(),
          Day4Screen2.id: (context) => Day4Screen2(),
          Day4Screen3.id: (context) => Day4Screen3(),
        }
    );
  }
}