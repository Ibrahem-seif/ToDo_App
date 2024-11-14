import 'package:flutter/material.dart';
import 'package:todoo_app/presentation/screens/home/home.dart';

class RoutesManager {
  static const String home = '/home';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
    }
  }
}
