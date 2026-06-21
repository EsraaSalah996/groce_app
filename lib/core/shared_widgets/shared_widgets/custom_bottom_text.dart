import 'package:flutter/material.dart';

class CustomBottomText extends StatelessWidget {
  final String title;
  const CustomBottomText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
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
