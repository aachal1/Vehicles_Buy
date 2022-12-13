import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'No notifications for now',
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      )),
    );
  }
}
