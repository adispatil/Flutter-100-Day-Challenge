import 'package:flutter/material.dart';

class AppbarDay2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.sort_rounded,
                size: 36,
              )),
          Spacer(),
        ],
      ),
    );
  }
}