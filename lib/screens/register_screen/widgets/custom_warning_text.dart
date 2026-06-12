import 'package:flutter/material.dart';

class CustomWarningText extends StatelessWidget {
  const CustomWarningText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "By continuing you agree to our ",
              style: TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Terms of Service",
              style: TextStyle(
                color: Color(0xff53B175),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "and ",
              style: TextStyle(
                color: Color(0xff7C7C7C),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Privacy Policy.",
              style: TextStyle(
                color: Color(0xff53B175),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
