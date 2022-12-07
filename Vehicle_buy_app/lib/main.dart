import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/Common/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.getLoginRoute(),
      getPages: Routes.routes,
      theme: ThemeData(
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 15,
          ),
          scaffoldBackgroundColor: Color.fromARGB(255, 14, 14, 14),
          primaryColor: Color.fromARGB(255, 255, 17, 0),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(bodyColor: Colors.white),
          )),
    );
  }
}
