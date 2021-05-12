import 'package:flutter/material.dart';

class ReusableListCard extends StatelessWidget {
  ReusableListCard({this.mCardLabel, this.mScreenName, this.mWorkingDate});

  final String mCardLabel;
  final String mScreenName;
  final String mWorkingDate;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 5.0,
        shadowColor: Colors.black,
        child: SizedBox(
          height: 95.0,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, mScreenName);
            },
            child: Column(
              children: <Widget>[
                Text(
                  mCardLabel,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                Text(
                  mWorkingDate,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
