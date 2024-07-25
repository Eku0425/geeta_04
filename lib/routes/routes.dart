import 'package:flutter/material.dart';

import '../screen/detailScreen/view/detailScreen.dart';
import '../screen/homeScreen/view/home_screen.dart';
import '../screen/splashScreen/SplashScreen.dart';

class MyRoutes {
  static Map<String, Widget Function(BuildContext)> myRoutes = {
    '/': (context) => const SplashScreen(),
    '/detail': (context) => const DetailScreen(),
    '/home': (context) => const HomeScreen(),
  };
}
