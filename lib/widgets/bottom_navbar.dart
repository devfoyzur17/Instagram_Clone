// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home_page.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = 'bottom-nav-bar';
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List _widgetOptions = [
    const HomePage(),
    const Text("Search Page"),
    const Text("add post page"),
    const Text("Shop Page"),
    const Text("Profile Page"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: AppDrawer(),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: ""),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,

          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.black,
          iconSize: 28,
          onTap: _onItemTapped,
          elevation: 10),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
