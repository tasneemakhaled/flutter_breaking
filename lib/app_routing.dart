import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_breaking/constants.dart';
import 'package:flutter_breaking/presentationLayer/screens/charchters_screen.dart';
import 'package:flutter_breaking/presentationLayer/screens/charcter_details.dart';

class AppRouting {
  Route? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case charchtersScreen:
        return MaterialPageRoute(builder: (_) => CharchtersScreen());
      case charchterDetails:
        return MaterialPageRoute(builder: (_) => CharcterDetailsScreen());
    }
  }
}
