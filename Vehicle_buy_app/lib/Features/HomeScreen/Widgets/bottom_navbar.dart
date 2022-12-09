import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:login_signup/Common/constants.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
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
        ]);
  }
}
