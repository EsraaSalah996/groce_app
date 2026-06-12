import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String title;
  final bool isPassword;
  final bool isEmail;

  const CustomTextFeild({
    super.key,
    required this.title,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            suffixIcon: isPassword
                ? const Icon(Icons.visibility, color: Colors.grey)
                : (isEmail
                      ? const Icon(Icons.check, color: Color(0xFF53B175))
                      : null),
          ),
        ),
      ],
    );
  }
}
