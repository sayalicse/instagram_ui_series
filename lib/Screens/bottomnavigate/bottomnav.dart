import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_series/Widgets/uihelper.dart';

import '../Home/homepage.dart';
import '../Post/postscreen.dart';
import '../Search/searchpage.dart';
import '../like/likepage.dart';
import '../profile/profilepage.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIdx = 0;

  final List<Widget> pages = [
    HomePage(),
    SearchPage(),
    PostScreen(),
    LikePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIdx,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIdx = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.plus_app), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: 'Likes'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
        ],
      ),
      body: IndexedStack(
        index: currentIdx,
        children: pages,
      ),
    );
  }
}
