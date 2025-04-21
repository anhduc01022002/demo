import 'package:flutter/material.dart';
import 'package:flutter_facebook/pages/home.dart';
import 'package:flutter_facebook/pages/menu.dart';
import 'package:flutter_facebook/pages/notification.dart';
import 'package:flutter_facebook/pages/profile.dart';
import 'package:flutter_facebook/pages/video.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  // Position
  int _current_index = 0;

  // ViewPager
  PageController _pageController = PageController();

  // Menu
  final List<Widget> _pages = [
    HomePage(),
    VideoPage(),
    ProfilePage(),
    NotificationPage(),
    MenuPage(),
  ];

  void _onPageChange(int index) {
    setState(() {
      _current_index = index;
    });
  }

  void _onIconSelect(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }

  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChange,
        physics: NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _current_index,
        onTap: _onIconSelect,
        selectedItemColor: Color(0xFF0866ff),
        unselectedItemColor: Color(0xFF000000),
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/home_icon.svg", width: 15, height: 15,), label: "Home"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/video.svg", width: 15, height: 15,), label: "Video"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/profile.svg", width: 15, height: 15,), label: "Profile"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/notification_icon.svg", width: 15, height: 15,), label: "Notification"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/side_navigator.svg", width: 15, height: 15,), label: "Menu"),
        ],
      ),
    );
  }
}
