import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_breaking/presentationLayer/screens/charchters_screen.dart';

class AppRouting {
  Route? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => CharchtersScreen());
    }
  }
}
