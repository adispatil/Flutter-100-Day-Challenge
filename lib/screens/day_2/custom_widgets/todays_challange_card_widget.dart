
import 'package:flutter/material.dart';
import 'package:flutter_challange/constants/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TodayChallangeCardWidget extends StatelessWidget {
  const TodayChallangeCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        height: 250,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 110,
              height: 30,
              alignment: Alignment.center,
              child: Text(
                'Intermediate',
                style:
                TextStyle(color: Color(0xFF6C99BD), fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: kIntermediateBackground),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Today\'s \nchallenge',
              style: TextStyle(
                fontFamily: 'Karla',
                fontWeight: FontWeight.w300,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'German meals',
              style: TextStyle(
                  color: kTextColorSkyBlue,
                  fontSize: 17,
                  fontFamily: 'Karla',
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.trophy,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Take this lesson to \nearn a new milestone',
                  style: TextStyle(fontFamily: 'Karla'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}