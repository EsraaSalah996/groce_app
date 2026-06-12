import 'package:flutter/material.dart';
import 'package:groce_app/screens/login_screen/login_screen.dart';
import 'package:groce_app/screens/register_screen/screens/register_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
