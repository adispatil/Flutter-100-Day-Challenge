import 'package:flutter/material.dart';
import 'package:flutter_challange/constants/app_constants.dart';
import 'package:flutter_challange/constants/color_constants.dart';
import 'package:flutter_challange/constants/font_constants.dart';
import 'package:flutter_challange/constants/image_constants.dart';

class Day3Screen1 extends StatefulWidget {
  static const String id = 'day_3_screen_1';

  const Day3Screen1({Key key}) : super(key: key);

  @override
  _Day3Screen1State createState() => _Day3Screen1State();
}

class _Day3Screen1State extends State<Day3Screen1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Day3AppColor.blue,
        child: ListView(
          children: <Widget>[
            buildProfileRow(),
            buildSearchTitle(),
            buildSearchTextField(),
            Stack(
              children: <Widget>[
                Container(
                  height: height - 300,
                  margin: EdgeInsets.only(top: 60),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: ListView(
                      children: [
                        buildChooseTransportText(),
                        buildTransportCard(
                            imageName: Day3Image.kBusImage,
                            transportName: 'Bus',
                            backgroundColor: Day3AppColor.lightBlue),
                        buildTransportCard(
                            imageName: Day3Image.kCardTrainImage,
                            transportName: 'MRT',
                            backgroundColor: Day3AppColor.blue),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildTransportCard(
      {@required String transportName,
      @required String imageName,
      @required Color backgroundColor}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 170,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(30.0)),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  transportName,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: Day3Fonts.kOpenSans),
                ),
                Container(
                  width: 70,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'Select',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: Day3Fonts.kOpenSans),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Image.asset(imageName),
        ],
      ),
    );
  }

  Widget buildChooseTransportText() {
    return Text(
      'Choose your transport',
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: Day3Fonts.kOpenSans),
    );
  }

  Widget buildSearchTextField() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextField(
        textAlign: TextAlign.left,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Day3AppColor.grey,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
              fontSize: 16,
              color: Day3AppColor.grey,
              fontFamily: Day3Fonts.kOpenSans),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(12),
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget buildSearchTitle() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Text(
        'Where you will go?',
        style: TextStyle(
            fontSize: 17, color: Colors.white, fontFamily: Day3Fonts.kOpenSans),
      ),
    );
  }

  /// Profile row
  Widget buildProfileRow() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 30, top: 5),
          child: Text(
            'Hello, \nJohn Doe',
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: Day3Fonts.kOpenSans),
          ),
        ),
        Spacer(),
        Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(right: 30),
          decoration: BoxDecoration(
            color: Day3AppColor.grey,
            borderRadius: BorderRadius.circular(30),
          ),
          child: CircleAvatar(
            minRadius: 25.0,
            backgroundImage: NetworkImage(kDummyProfileImageUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
