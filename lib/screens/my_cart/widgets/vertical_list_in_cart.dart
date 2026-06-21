import 'package:flutter/material.dart';
import 'package:groce_app/core/model/cart_item.dart';
import 'package:groce_app/screens/my_cart/widgets/product_in_cart.dart';
import 'package:groce_app/screens/product_details_screen/screens/product_details_screen.dart';

class VerticalListInCart extends StatelessWidget {
  const VerticalListInCart({super.key, required this.products});

  final List<CartItemModel> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ProductDetailsScreen();
                },
              ),
            );
          },
          child: ProductInCart(
            image: product.image,
            name: product.name,
            weight: product.weight,
            price: product.price,
            quantity: product.quantity,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Divider(color: Color(0xFFE2E2E2), thickness: 1),
        );
      },
    );
  }
}
