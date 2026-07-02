import 'package:flutter/material.dart';

class CheckoutTerms extends StatelessWidget {
  const CheckoutTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: const TextSpan(
          style: TextStyle(color: Colors.grey, fontSize: 13),
          children: [
            TextSpan(text: "By placing an order you agree to our\n"),
            TextSpan(
              text: "Terms And Conditions",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
