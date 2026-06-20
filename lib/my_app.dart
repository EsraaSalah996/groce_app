import 'package:flutter/material.dart';
import 'package:groce_app/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBarScreen(),
    );
  }
}
