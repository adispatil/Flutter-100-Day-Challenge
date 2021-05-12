import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_challange/constants/color_constants.dart' as MyColor;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationWalletScreen extends StatefulWidget {
  const BottomNavigationWalletScreen({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavigationWalletScreenState createState() =>
      _BottomNavigationWalletScreenState();
}

class _BottomNavigationWalletScreenState
    extends State<BottomNavigationWalletScreen> {
  @override
  Widget build(BuildContext context) {
    String mDropDownLabel = 'USD';

    return Scaffold(
      backgroundColor: Color(0xFFF1F4F7),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.bars,
                        color: MyColor.kTextColorSecondary,
                      ),

                      Text('Wallets', style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: MyColor.kTextColorPrimary
                      ),),

                      Icon(
                        FontAwesomeIcons.wallet,
                        color: MyColor.kTextColorSecondary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
              child: Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.white,
                  elevation: 2.0,
                  shadowColor: Colors.black,
                  child: Column(
                    children: <Widget>[
                      /// total wallet label
                      Container(
                        margin:
                            EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 45,
                              height: 45,
                              child: Icon(
                                FontAwesomeIcons.wallet,
                                color: Colors.white,
                                size: 20,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF4C5867)),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Total Wallet Balance',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: MyColor.kTextColorPrimary),
                            ),
                            Spacer(),
                            DropdownButton<String>(
                              value: mDropDownLabel,
                              icon: const Icon(
                                FontAwesomeIcons.chevronDown,
                                size: 16.0,
                                color: MyColor.kTextColorSecondary,
                              ),
                              elevation: 24,
                              style: const TextStyle(
                                  color: MyColor.kTextColorSecondary,
                                  fontSize: 17.0),
                              underline: Container(
                                height: 0,
                              ),
                              items: <String>['USD', 'INR', 'EUR', 'AUD']
                                  .map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  print(value);
                                  mDropDownLabel = value;
                                });
                              },
                            )
                          ],
                        ),
                      ),

                      ///current margin value
                      Container(
                        margin:
                            EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '\$39.584',
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: MyColor.kTextColorPrimary),
                            ),
                            Spacer(),
                            Container(
                              width: 75,
                              height: 30,
                              alignment: Alignment.center,
                              child: Text(
                                '+ 3.54%',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  color: MyColor.kBackgroundOrange),
                            ),
                          ],
                        ),
                      ),

                      /// BTC value
                      Container(
                        alignment: Alignment.centerLeft,
                        margin:
                            EdgeInsets.only(left: 25.0, top: 1.0, right: 20.0),
                        child: Text(
                          '7.251332 BTC',
                          style: TextStyle(
                              color: MyColor.kTextColorSecondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),

                      Container(
                        alignment: Alignment.center,
                        margin:
                            EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
