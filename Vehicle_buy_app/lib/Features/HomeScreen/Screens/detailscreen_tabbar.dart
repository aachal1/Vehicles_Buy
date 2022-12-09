import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreenTabBar extends StatelessWidget {
  DetailScreenTabBar({
    super.key,
  });

  // var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Your email id',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 52, 52, 52))),
                )
              ],
            ),
          )),
    );
  }
}
