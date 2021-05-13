import 'package:flutter/material.dart';
import 'package:flutter_challange/constants/color_constants.dart' as MyColor;
import 'package:flutter_challange/screens/day_1/day_1_screen2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowListItemWidget extends StatelessWidget {
  RowListItemWidget({this.position});

  final int position;

  @override
  Widget build(BuildContext context) {
    String label1 = '';
    String label2 = '';
    String label3 = '';
    String label4 = '';
    Color label4Color;
    IconData iconDate;
    Color cryptoBackground;

    debugPrint('Position : $position');
    switch (position) {
      case 0:
        {
          label1 = '3.529020 BTC';
          label2 = '\$ 5.441';
          label3 = '\$ 19.153';
          label4 = '+5.44%';
          iconDate = FontAwesomeIcons.btc;
          cryptoBackground = MyColor.kBitcoinBackgroundColor;
        }
        break;
      case 1:
        {
          label1 = '12.633187 ETH';
          label2 = '\$ 401';
          label3 = '\$ 4.822';
          label4 = '+3.97%';
          iconDate = FontAwesomeIcons.ethereum;
          cryptoBackground = MyColor.kEthBackgroundColor;
        }
        break;
      case 2:
        {
          label1 = '1911.436487 XRP';
          label2 = '\$ 0.45';
          label3 = '\$ 859';
          label4 = '-13.65%';
          iconDate = FontAwesomeIcons.coins;
          cryptoBackground = MyColor.kXprBackgroundColor;
        }
        break;
    }

    if (label4.contains('-')) {
      label4Color = Colors.red;
    } else {
      label4Color = Colors.green;
    }

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Day1Screen2.id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 1.0,
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.0, top: 25.0, right: 15.0, bottom: 25.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 45,
                height: 45,
                child: Icon(
                  iconDate,
                  color: Colors.white,
                  size: 25,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cryptoBackground),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    label1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kTextColorPrimary),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    label2,
                    style: TextStyle(
                        fontSize: 15.0, color: MyColor.kTextColorSecondary),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    label3,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: MyColor.kTextColorPrimary),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    label4,
                    style: TextStyle(fontSize: 15.0, color: label4Color),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
