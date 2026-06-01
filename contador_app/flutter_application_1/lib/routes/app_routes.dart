import 'package:flutter_application_1/models/menu_options.dart';
import 'package:flutter_application_1/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => const HomeScreen(),
    '/info': (BuildContext context) => const InfoScreen(),
  };

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/home', name: 'Contador', icon: Icons.calculate_rounded, screen: const HomeScreen()),
    MenuOptions(route: '/info', name: 'Información', icon: Icons.info_rounded, screen: const InfoScreen()),
  ];

}
