import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    return Container();
  }
}
