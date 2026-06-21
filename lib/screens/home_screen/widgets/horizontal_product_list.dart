import 'package:flutter/material.dart';
import 'package:groce_app/core/model/peoduct_data_model.dart';
import 'package:groce_app/screens/home_screen/widgets/product_card.dart';
import 'package:groce_app/screens/product_details_screen/screens/product_details_screen.dart';

class HorizontalProductList extends StatelessWidget {
  const HorizontalProductList({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailsScreen()),
              );
            },
            child: ProductCard(
              photo: product.photo,
              name: product.name,
              weight: product.weight,
              price: product.price,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 15);
        },
      ),
    );
  }
}
