import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/blocLayer/cubit/characters_cubit.dart';
import 'package:flutter_breaking/constants.dart';
import 'package:flutter_breaking/presentationLayer/screens/charchters_screen.dart';
import 'package:flutter_breaking/presentationLayer/screens/charcter_details.dart';

class AppRouting {
  Route? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case charchtersScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => CharactersCubit(),
                child: CharchtersScreen(),
              ),
        );
      case charchterDetails:
        return MaterialPageRoute(builder: (_) => CharcterDetailsScreen());
    }
  }
}
