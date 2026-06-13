import 'package:flutter/material.dart';

class PriceAndQuantity extends StatelessWidget {
  const PriceAndQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Icon(Icons.remove),
          SizedBox(width: 20),
          Container(
            width: 45,
            height: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              "1",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(width: 30),
          Icon(Icons.add),
          SizedBox(width: 130),
          Text(
            "\$4.99",
            style: TextStyle(
              color: Color(0xff181725),
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
