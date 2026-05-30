import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String photo;
  final String name;
  final String weight;
  final String price;

  const ProductCard({
    super.key,
    required this.photo,
    required this.name,
    required this.weight,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 173,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(photo),
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff181725),
              ),
            ),
            Text(
              weight,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7C7C7C),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Color(0xff53B175),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
