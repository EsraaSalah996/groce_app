import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groce_app/core/shared_widgets/shared_widgets/custom_button.dart';
import 'package:groce_app/screens/login_screen/screens/login_screen.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const Spacer(),

            SvgPicture.asset("assets/icons/white_logo.svg", width: 48),

            const SizedBox(height: 24),

            const Text(
              "Welcome\nto our store",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              "Ger your groceries in as fast as one hour",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffFCFCFC), fontSize: 16),
            ),

            const SizedBox(height: 40),

            CustomButton(
              title: 'Get Started',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
