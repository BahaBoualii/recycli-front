import 'package:flutter/material.dart';
import 'package:front/discover_screen.dart';
import 'package:front/post_offer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    PostScreen(),
    DiscoverScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SafeArea(
          child: GNav(
        tabs: const [
          GButton(icon: Icons.add_box_outlined, text: 'Post'),
          GButton(icon: Icons.manage_search_outlined, text: 'Post'),
        ],
        backgroundColor: const Color(0x00EEF2E6),
        color: const Color(0x003D8361),
        duration: const Duration(milliseconds: 400),
        tabBorderRadius: 30.0,
        onTabChange: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      )),
    );
  }
}
