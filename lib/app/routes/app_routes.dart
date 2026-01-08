import 'package:aryamanwig/features/auth/login/view/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../../core/constant/route_name.dart';
import '../../features/home/presentation/view/screens/home_screen.dart';

class AppRoutes {
  static const String initialRoute = RouteName.login;

  static final Map<String, WidgetBuilder> routes = {
    RouteName.home: (context) => const HomeScreen(),
    RouteName.login: (context) => const LoginScreen(),
  };
}