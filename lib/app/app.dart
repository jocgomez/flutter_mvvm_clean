import 'package:flutter/material.dart';
import 'package:flutter_mvvm_clean/presentation/resources/routes_manager.dart';
import 'package:flutter_mvvm_clean/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); // Private named constructor

  static const MyApp instance =
      MyApp._internal(); // Single instance -- Singleton

  factory MyApp() => instance; // Factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
