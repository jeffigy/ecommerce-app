import 'package:ecommerce/screens/home.dart';
import 'package:flutter/material.dart';

import 'account.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

final screens = [
  Home(),
  Account(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Account'),
        ],

      ),
    );
  }
}
