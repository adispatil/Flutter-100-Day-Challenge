
import 'package:flutter/material.dart';
import 'package:flutter_challange/screens/day_1/custom_widgets/bottom_navigation_bar.dart';

class Day1ChallengeScreen1 extends StatefulWidget {
  static const String id = 'day_1_challenge_screen1';

  @override
  _Day1ChallengeScreen1State createState() => _Day1ChallengeScreen1State();
}

class _Day1ChallengeScreen1State extends State<Day1ChallengeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4F7),
      body: BottomNavigation(),
    );
  }
}
