import 'package:get/get.dart';
import 'package:login_signup/Features/HomeScreen/Screens/bottom_navbar_screens/favourite_screen.dart';
import 'package:login_signup/Features/HomeScreen/Screens/bottom_navbar_screens/notification_screen.dart';
import 'package:login_signup/Features/HomeScreen/Screens/detailscreen_tabbar.dart';
import 'package:login_signup/Features/HomeScreen/Screens/homescreen.dart';
import '../Features/login_signup_screens/loginscreen.dart';
import '../Features/login_signup_screens/signupscreen.dart';

class Routes {
  static String login = '/';
  static String signup = '/signup';
  static String home = '/home';
  static String detailscreen_tabbar = '/detailscreen_tabbar';
  static String favourite_screen = '/favourite_screen';
  static String notification_screen = '/notification_screen';

  static String getLoginRoute() => login;
  static String getSignUpRoute() => signup;
  static String getHomeRoute() => home;
  static String getDetailRoute() => detailscreen_tabbar;
  static String getfavouriteScreenRoute() => favourite_screen;
  static String getnotificationScreenRoute() => notification_screen;

  static List<GetPage> routes = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: signup,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: detailscreen_tabbar,
      page: () => DetailScreenTabBar(),
    ),
    GetPage(
      name: favourite_screen,
      page: () => FavouriteScreen(),
    ),
    GetPage(
      name: notification_screen,
      page: () => NotificationScreen(),
    )
  ];
}
