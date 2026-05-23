import 'package:flutter/material.dart';

class CustomBottomText extends StatelessWidget {
  const CustomBottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(
            color: Color(0xff181725),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Singup",
          style: TextStyle(
            color: Color(0xff53B175),
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
