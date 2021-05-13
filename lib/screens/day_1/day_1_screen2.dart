import 'package:flutter_challange/constants/color_constants.dart' as MyColor;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_widgets/custom_appbar.dart';

class Day1Screen2 extends StatefulWidget {
  static const String id = 'day_1_screen2';

  @override
  _Day1Screen2State createState() => _Day1Screen2State();
}

class _Day1Screen2State extends State<Day1Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.kBackgroundParent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            /// custom app bar
            CustomAppBar(
              leftIcon: FontAwesomeIcons.chevronLeft,
              rightIcon: FontAwesomeIcons.wallet,
              screenLabel: 'Wallet',
            ),
          ],
        ),
      ),
    );
  }
}
