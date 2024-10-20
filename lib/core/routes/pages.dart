import 'package:flutter/material.dart';
import 'package:sport_store/core/routes/routes_name.dart';
import 'package:sport_store/pages/home.dart';
import 'package:sport_store/pages/splash.dart';
import 'package:sport_store/widgets/item.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      
      //Replace With Home
      case RoutesName.home:
        return MaterialPageRoute(builder: (_) {
          return const Home();
        });

      //Replace With Splash
      case RoutesName.splash:
        return MaterialPageRoute(builder: (_) {
          return const Splash();
        });

      //Replace With Item
      case RoutesName.item:
        return MaterialPageRoute(builder: (_) {
          final args = settings?.arguments;
          return Item(args: args);
        });

      //Replace With Home
      default:
        throw Exception('Route not found!');
    }
  }
}

