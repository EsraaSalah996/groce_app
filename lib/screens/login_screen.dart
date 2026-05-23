import 'package:flutter/material.dart';
import 'package:groce_app/widgets/custom_bottom_text.dart';
import 'package:groce_app/widgets/custom_button.dart';
import 'package:groce_app/widgets/custom_text_feild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
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
                    "Loging",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Enter your emails and password",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7C7C7C),
                    ),
                  ),
                  SizedBox(height: 40),
                  CustomTextFeild(title: "Email"),
                  SizedBox(height: 30),
                  CustomTextFeild(title: "Password", isPassword: true),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forgot Password?"),
                  ),
                  SizedBox(height: 30),
                  CustomButton(),
                  SizedBox(height: 25),
                  CustomBottomText(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
