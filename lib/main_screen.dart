import 'package:apache_riders/pages/evenements/evenements.dart';
import 'package:apache_riders/pages/header/header.dart';
import 'package:apache_riders/pages/home/home.dart';
import 'package:apache_riders/pages/navbar/navbar.dart';
import 'package:apache_riders/pages/scores/scores.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Evenements(),
    Scores(),
  ];

  void _onItemTapped(int index) {
    if (index >= 0 && index < _widgetOptions.length) {
      setState(() {
        _selectedIndex = index;
      });
    } else {
      print('Index out of range: $index');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Print debug message for the selected index
    print('Building MainScreen with _selectedIndex: $_selectedIndex');

    return Scaffold(
      appBar: Header(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: NavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
