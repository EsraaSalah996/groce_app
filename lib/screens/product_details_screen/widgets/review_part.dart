import 'package:flutter/material.dart';

class ReviewPart extends StatelessWidget {
  const ReviewPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Review",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff181725),
          ),
        ),
        const Spacer(),

        Row(
          children: List.generate(
            5,
            (index) =>
                const Icon(Icons.star, color: Color(0xffF3603F), size: 20),
          ),
        ),

        const SizedBox(width: 15),
        const Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xff181725)),
      ],
    );
  }
}
