
import 'package:flutter/material.dart';
import 'package:flutter_challange/constants/app_constants.dart';
import 'package:flutter_challange/constants/color_constants.dart';

class UserProfileDetailsWidget extends StatelessWidget {
  const UserProfileDetailsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 30.0),
          child: CircleAvatar(
            minRadius: 30.0,
            backgroundImage: NetworkImage(kDummyProfileImageUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Martha Stewart',
                style: TextStyle(
                  fontFamily: 'Karla',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "  ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                    WidgetSpan(
                      child: Icon(
                        Icons.location_on_rounded,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                        text: " United Kingdom",
                        style: TextStyle(
                          fontFamily: 'Karla',
                          fontSize: 15,
                          color: kTextColorSecondary,
                        )),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}