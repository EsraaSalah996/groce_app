import 'package:flutter/material.dart';

class CustomScreenBackground extends StatelessWidget {
  const CustomScreenBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
