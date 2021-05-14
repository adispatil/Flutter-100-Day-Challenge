import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challange/constants/color_constants.dart' as MyColor;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({this.leftIcon, this.rightIcon, this.screenLabel});

  final IconData leftIcon;
  final IconData rightIcon;
  final String screenLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.0, top: 15.0, bottom: 15.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(leftIcon),
                onPressed: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : SystemNavigator.pop();
                },
                color: MyColor.kTextColorSecondary,
              ),
              Text(
                screenLabel,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: MyColor.kTextColorPrimary),
              ),
              Icon(
                rightIcon,
                color: MyColor.kTextColorSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
