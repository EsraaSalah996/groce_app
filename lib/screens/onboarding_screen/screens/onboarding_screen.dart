import 'package:flutter/material.dart';
import 'package:groce_app/screens/onboarding_screen/widgets/onboarding_background.dart';
import 'package:groce_app/screens/onboarding_screen/widgets/onboarding_content.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(children: [OnboardingBackground(), OnboardingContent()]),
    );
  }
}
