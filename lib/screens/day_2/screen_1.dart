import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challange/screens/day_2/custom_widgets/appbar_widget_screen1.dart';
import 'package:flutter_challange/screens/day_2/custom_widgets/todays_challange_card_widget.dart';
import 'package:flutter_challange/screens/day_2/custom_widgets/user_profile_widget.dart';
import 'package:flutter_challange/utils/circle_progress.dart';

class Day2HomeScreen extends StatefulWidget {
  const Day2HomeScreen({Key key}) : super(key: key);
  static const String id = 'day_2_screen_1';

  @override
  _Day2HomeScreenState createState() => _Day2HomeScreenState();
}

class _Day2HomeScreenState extends State<Day2HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppbarDay2(),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    UserProfileDetailsWidget(),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Welcome back!',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Karla',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TodayChallangeCardWidget(),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Your Courses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Karla',
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Card(
                              elevation: 5,
                              color: Color(0xFFFDAD31),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 150,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 15, top: 25),
                                      child: Text(
                                        'Spanish',
                                        style: TextStyle(
                                            fontFamily: 'Karla',
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15, top: 5),
                                      child: Text(
                                        'Beginner',
                                        style: TextStyle(
                                            fontFamily: 'Karla',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ),

                                    Container(
                                        margin: EdgeInsets.only(left: 110),
                                        height: 60,
                                        width: 60,
                                        child: CustomPaint(
                                          foregroundPainter: CircleProgress(48),
                                          child: Center(
                                            child: Text(
                                                '48%',
                                                style: TextStyle(
                                                    fontFamily: 'Karla',
                                                    fontSize: 15,
                                                    color: Colors.white)
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Card(
                              elevation: 5,
                              color: Color(0xFFFDAD31),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 150,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 15, top: 25),
                                      child: Text(
                                        'Spanish',
                                        style: TextStyle(
                                            fontFamily: 'Karla',
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15, top: 5),
                                      child: Text(
                                        'Beginner',
                                        style: TextStyle(
                                            fontFamily: 'Karla',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ),

                                    Container(
                                        margin: EdgeInsets.only(left: 110),
                                        height: 60,
                                        width: 60,
                                        child: CustomPaint(
                                          foregroundPainter: CircleProgress(48),
                                          child: Center(
                                            child: Text(
                                                '48%',
                                                style: TextStyle(
                                                    fontFamily: 'Karla',
                                                    fontSize: 15,
                                                    color: Colors.white)
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Card(
                              elevation: 5,
                              color: Color(0xFFFDAD31),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                height: 150,
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 15, top: 25),
                                      child: Text(
                                        'Spanish',
                                        style: TextStyle(
                                            fontFamily: 'Karla',
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15, top: 5),
                                      child: Text(
                                        'Beginner',
                                        style: TextStyle(
                                            fontFamily: 'Karla',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ),

                                    Container(
                                        margin: EdgeInsets.only(left: 110),
                                        height: 60,
                                        width: 60,
                                        child: CustomPaint(
                                          foregroundPainter: CircleProgress(48),
                                          child: Center(
                                            child: Text(
                                                '48%',
                                                style: TextStyle(
                                                    fontFamily: 'Karla',
                                                    fontSize: 15,
                                                    color: Colors.white)
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
