import 'package:flutter/material.dart';
import 'package:groce_app/screens/home_screen/screens/home_screen.dart';
import 'package:groce_app/shared_widgets/custom_bottom_text.dart';
import 'package:groce_app/shared_widgets/custom_button.dart';
import 'package:groce_app/shared_widgets/custom_screen_background.dart';
import 'package:groce_app/shared_widgets/custom_text_feild.dart';
import 'package:groce_app/screens/register_screen/widgets/custom_warning_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScreenBackground(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Center(
                    child: Image.asset("assets/images/logo.png", height: 60),
                  ),
                  SizedBox(height: 59),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Enter your credentials to continue",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomTextFeild(title: "Username"),
                  SizedBox(height: 30),
                  CustomTextFeild(title: "Email", isEmail: true),
                  SizedBox(height: 30),
                  CustomTextFeild(title: "Password", isPassword: true),
                  SizedBox(height: 20),
                  CustomWarningText(),
                  SizedBox(height: 30),
                  CustomButton(
                    title: "Sign Up",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                  ),
                  SizedBox(height: 25),
                  CustomBottomText(title: "Already have an account? "),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
