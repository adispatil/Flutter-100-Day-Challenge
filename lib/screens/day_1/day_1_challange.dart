
import 'package:flutter/material.dart';
import 'package:flutter_challange/screens/day_1/bottom_navigation_bar.dart';

class Day1Challenge extends StatefulWidget {
  static const String id = 'day_1_challenge';

  @override
  _Day1ChallengeState createState() => _Day1ChallengeState();
}

class _Day1ChallengeState extends State<Day1Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F7),
      body: BottomNavigation(),
    );
  }
}
