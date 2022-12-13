import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:login_signup/Common/constants.dart';
import 'package:login_signup/Features/HomeScreen/Screens/bottom_navbar_screens/favourite_screen.dart';
import 'package:login_signup/Features/HomeScreen/Screens/bottom_navbar_screens/notification_screen.dart';
import 'package:login_signup/Features/HomeScreen/Screens/bottom_navbar_screens/homescreen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({
    super.key,
  });

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _activeIndex = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  List pages = [HomeScreen(), FavouriteScreen(), NotificationScreen()];

  _BottomNavbarState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          onTap: (index) {
            setState(() {
              _activeIndex = index;
            });
          },
          index: _activeIndex,
          animationDuration: Duration(milliseconds: 600),
          backgroundColor: Color(0x44aaaaff),
          height: 60,
          items: [
            Icon(
              Icons.home_rounded,
              size: 20,
              color: kprimary,
            ),
            Icon(Icons.favorite, size: 20, color: kprimary),
            Icon(Icons.notifications_active, size: 20, color: kprimary),
          ]),
      body: pages[_activeIndex],
    );
  }
}
