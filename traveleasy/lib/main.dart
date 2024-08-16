import 'package:flutter/material.dart';
import 'package:traveleasy/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute: AppRoutes.login, // Defina aqui a rota inicial
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
