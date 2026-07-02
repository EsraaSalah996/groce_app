import 'package:flutter/material.dart';

class OrderSuccessText extends StatelessWidget {
  const OrderSuccessText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Your Order has been\naccepted",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 20),
        Text(
          "Your items has been placd and is on\nit's way to being processed",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
