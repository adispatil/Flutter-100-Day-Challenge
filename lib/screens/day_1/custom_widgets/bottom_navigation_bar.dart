import 'package:flutter/material.dart';
import 'package:flutter_challange/screens/day_1/custom_widgets/bottom_navigation_wallet_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    BottomNavigationWalletScreen(),
    Text('Navigation',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Notifications',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Settings',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.wallet,
              ),
              backgroundColor: Colors.white,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.compass),
              backgroundColor: Colors.white,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell),
              backgroundColor: Colors.white,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cog
              ),
              backgroundColor: Colors.white,
              label: '',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF4C5968),
          unselectedItemColor: Color(0xFFAEB8C4),
          iconSize: 25,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

