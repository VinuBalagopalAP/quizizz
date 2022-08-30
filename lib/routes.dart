import 'package:flutter/material.dart';

import 'screens/animation/home_gif.dart';
import 'screens/animation/splash_screen.dart';
import 'screens/quiz_home.dart';

class MyRoutes {
  static Route<dynamic> myRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => HomeGif(),
        );
      case '/countdown':
        return MaterialPageRoute(
          builder: (context) => CountDown(),
        );
      case '/quiz_home':
        return MaterialPageRoute(
          builder: (context) => QuizHome(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => HomeGif(),
        );
    }
  }
}
