import 'package:aryamanwig/features/auth/forgot_password/view/screens/check_email.dart';
import 'package:aryamanwig/features/auth/forgot_password/view/screens/forgot_password.dart';
import 'package:aryamanwig/features/auth/forgot_password/view/screens/reset_password.dart';
import 'package:aryamanwig/features/auth/forgot_password/view/screens/set_new_password.dart';
import 'package:aryamanwig/features/auth/login/view/screens/login_screen.dart';
import 'package:aryamanwig/features/auth/signup/view/srceens/signup_screen.dart';
import 'package:flutter/material.dart';
import '../../core/constant/route_name.dart';
import '../../features/home/presentation/view/screens/home_screen.dart';

class AppRoutes {
  static const String initialRoute = RouteName.home;

  static final Map<String, WidgetBuilder> routes = {
    RouteName.home: (context) => const HomeScreen(),
    RouteName.login: (context) => const LoginScreen(),
    RouteName.signup: (context) => const SignupScreen(),
    RouteName.forgotpassword: (context) => const ForgotPassword(),
    RouteName.checkemail: (context) => const CheckEmail(),
    RouteName.setnewpassword: (context) => const SetNewPassword(),
    RouteName.resetpassword: (context) => const ResetPassword(),
  };
}