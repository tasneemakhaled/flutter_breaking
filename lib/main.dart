import 'package:flutter/material.dart';
import 'package:flutter_breaking/app_routing.dart';

void main() {
  runApp(BreakingBadApp(appRouting: AppRouting()));
}

class BreakingBadApp extends StatelessWidget {
  final AppRouting appRouting;

  const BreakingBadApp({super.key, required this.appRouting});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouting.generateRoute,
    );
  }
}
