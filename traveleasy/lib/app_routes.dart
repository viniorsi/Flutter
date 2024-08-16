import 'package:flutter/material.dart';
import 'package:traveleasy/create_account_screen.dart';
import 'package:traveleasy/details_screen.dart';
import 'package:traveleasy/home_screen.dart';
import 'package:traveleasy/login_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String details = '/details';
  static const String login = '/login';
  static const String createAccount = '/create-account';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case details:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAccountScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
