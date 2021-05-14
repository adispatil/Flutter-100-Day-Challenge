import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challange/constants/app_constants.dart';
import 'package:flutter_challange/constants/color_constants.dart' as MyColor;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_widgets/custom_appbar.dart';

class Day1Screen2 extends StatefulWidget {
  static const String id = 'day_1_screen2';

  @override
  _Day1Screen2State createState() => _Day1Screen2State();
}

class _Day1Screen2State extends State<Day1Screen2> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.kBackgroundParent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            /// custom app bar
            getAppBar(),

            Expanded(
              child: ListView(
                children: <Widget>[
                  /// first row card
                  getFirstCardContainer(),

                  /// second row chips
                  _buildChips(),

                  /// third row market movement
                  getMarketMovementCard(),

                  /// buy sell action
                  getBuySellActionButtons(),

                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container getBuySellActionButtons() {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      FontAwesomeIcons.dollarSign,
                      color: Colors.white,
                      size: 25,
                    ),
                    decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [
                              MyColor.kGradientStartColor,
                              MyColor.kGradientEndColor,
                            ],
                            begin: const FractionalOffset(-1.0, 1),
                            end: const FractionalOffset(1.0, -1),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        shape: BoxShape.circle,
                        color: MyColor.kBitcoinBackgroundColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Buy BTC',
                    style: TextStyle(
                        color: MyColor.kTextColorPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      FontAwesomeIcons.dollarSign,
                      color: Colors.white,
                      size: 25,
                    ),
                    decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [
                              MyColor.kGradientPinkStartColor,
                              MyColor.kGradientPinkEndColor,
                            ],
                            begin: const FractionalOffset(-1.0, 1),
                            end: const FractionalOffset(1.0, -1),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        shape: BoxShape.circle,
                        color: MyColor.kBitcoinBackgroundColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sell BTC',
                    style: TextStyle(
                        color: MyColor.kTextColorPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container getMarketMovementCard() {
    return Container(
        height: 200,
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          elevation: 2.0,
          shadowColor: Colors.black,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Lower : \$4.895',
                          style: TextStyle(
                              color: MyColor.kTextColorSecondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 20.0, top: 20.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Higher : \$6.857',
                          style: TextStyle(
                              color: MyColor.kTextColorSecondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  CustomAppBar getAppBar() {
    return CustomAppBar(
      leftIcon: FontAwesomeIcons.chevronLeft,
      rightIcon: FontAwesomeIcons.ellipsisV,
      screenLabel: 'Bitcoin Wallet',
    );
  }

  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < kDay1ChipList.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(kDay1ChipList[i],
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: i == _selectedIndex
                    ? Colors.white
                    : MyColor.kTextColorSecondary)),
        pressElevation: 5,
        backgroundColor: MyColor.kBackgroundParent,
        selectedColor: MyColor.kSelectedChipColor,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );
      chips.add(choiceChip);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: chips,
    );
  }

  Container getFirstCardContainer() {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 2.0,
        shadowColor: Colors.black,
        child: Column(
          children: <Widget>[
            /// total wallet label
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      FontAwesomeIcons.btc,
                      color: Colors.white,
                      size: 25,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: MyColor.kBitcoinBackgroundColor),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Bitcoin',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: MyColor.kTextColorPrimary),
                  ),
                  Spacer(),
                  Text(
                    'BTC',
                    style: TextStyle(
                        color: MyColor.kTextColorSecondary,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            /// Current margin value
            Container(
              margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '3.529020 BTC',
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: MyColor.kTextColorPrimary),
                  ),
                ],
              ),
            ),

            /// BTC value
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 25.0, top: 1.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '\$ 19.153 USD',
                    style: TextStyle(
                        color: MyColor.kTextColorSecondary,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                  Spacer(),
                  Container(
                    width: 75,
                    height: 30,
                    alignment: Alignment.center,
                    child: Text(
                      '- 2.32%',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.red),
                  ),
                ],
              ),
            ),

            /// Down arrow
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Icon(
                FontAwesomeIcons.chevronDown,
                size: 30,
                color: MyColor.kTextColorSecondary,
              ),
            ),

            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class MyThreeOptions extends StatefulWidget {
  @override
  _MyThreeOptionsState createState() => _MyThreeOptionsState();
}

class _MyThreeOptionsState extends State<MyThreeOptions> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List<Widget>.generate(
        3,
        (int index) {
          return ChoiceChip(
            label: Text('Item $index'),
            selected: _value == index,
            onSelected: (bool selected) {
              setState(() {
                _value = selected ? index : null;
              });
            },
          );
        },
      ).toList(),
    );
  }
}
