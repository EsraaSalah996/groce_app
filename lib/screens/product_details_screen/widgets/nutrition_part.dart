import 'package:flutter/material.dart';

class NutritionPart extends StatelessWidget {
  const NutritionPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Nutritions",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff181725),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xffEBEBEB),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text(
            "100gr",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff7C7C7C),
            ),
          ),
        ),

        const SizedBox(width: 15),
        const Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xff181725)),
      ],
    );
  }
}
