import 'package:get/get.dart';
import 'package:login_signup/Features/HomeScreen/Pages/detailscreen.dart';
import 'package:login_signup/Features/HomeScreen/Pages/homescreen.dart';
import '../Features/login_signup_screens/loginscreen.dart';
import '../Features/login_signup_screens/signupscreen.dart';

class Routes {
  static String login = '/';
  static String signup = '/signup';
  static String home = '/home';
  static String detail = '/detail';

  static String getLoginRoute() => login;
  static String getSignUpRoute() => signup;
  static String getHomeRoute() => home;
  static String getDetailRoute() => detail;

  static List<GetPage> routes = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: detail,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: detail,
      page: () => DetailScreen(),
    )
  ];
}
