import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductInCart extends StatelessWidget {
  const ProductInCart({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    required this.weight,
  });
  final String image;
  final String name;
  final String weight;
  final String quantity;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image, width: 80, height: 80),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.close, color: Colors.grey.shade400),
                ],
              ),
              const SizedBox(height: 4),
              Text(weight, style: TextStyle(fontSize: 14, color: Colors.grey)),

              const SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(Icons.remove, color: Colors.grey),
                  ),
                  const SizedBox(width: 17),
                  Text(
                    quantity,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 17),
                  Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/add.svg",
                      width: 14,
                      height: 14,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    price,
                    style: TextStyle(
                      color: Color(0xff181725),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
