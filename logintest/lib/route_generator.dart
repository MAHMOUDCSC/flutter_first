import 'package:flutter/material.dart';
import 'UI/home.dart';
import 'package:flutter/material.dart';
import 'UI/Pages/sigin.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Home());
      case '/Signin':
        {
          print("singin;");
          return MaterialPageRoute(builder: (_) => Signin());
        }
      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _errorRoute(settings) {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              body:
                  Center(child: Text('No route defined for ${settings.name}')),
            ));
  }
}
