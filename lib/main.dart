import 'package:flutter/material.dart';
import 'package:flutter_challange/screens/day_1/day_1_challange_screen1.dart';
import 'package:flutter_challange/screens/day_1/day_1_screen2.dart';
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
          Day1Screen2.id: (context) => Day1Screen2()
        }
    );
  }
}