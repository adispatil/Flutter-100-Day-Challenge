import 'package:flutter/material.dart';
import 'package:flutter_challange/constants/app_constants.dart';
import 'package:flutter_challange/screens/day_1/day_1_screen1.dart';
import 'package:flutter_challange/screens/day_2/screen_1.dart';
import 'package:flutter_challange/screens/day_3/screen_1.dart';
import 'package:flutter_challange/screens/day_4/screen_1.dart';
import 'package:flutter_challange/widgets/reusable_list_card.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '100 Days Challenge',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: <Widget>[
              ReusableListCard(
                mCardLabel: kDay1Challenge,
                mScreenName: Day1ChallengeScreen1.id,
                mWorkingDate: '12-05-21',
              ),
              ReusableListCard(
                mCardLabel: kDay2Challenge,
                mScreenName: Day2HomeScreen.id,
                mWorkingDate: '14-05-21',
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ReusableListCard(
                mCardLabel: kDay3Challenge,
                mScreenName: Day3Screen1.id,
                mWorkingDate: '17-05-21',
              ),
              ReusableListCard(
                mCardLabel: kDay4Challenge,
                mScreenName: Day4Screen1.id,
                mWorkingDate: '14-05-21',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
