import 'package:flutter/material.dart';
import 'package:groce_app/core/model/cart_item.dart';
import 'package:groce_app/core/shared_widgets/shared_widgets/custom_button.dart';
import 'package:groce_app/screens/my_cart/widgets/vertical_list_in_cart.dart';

class MyCartScreen extends StatelessWidget {
  MyCartScreen({super.key});

  final List<CartItemModel> products = [
    const CartItemModel(
      image: 'assets/images/banana.png',
      name: 'Organic Bananas',
      weight: '7pcs, Priceg',
      price: '\$4.99',
      quantity: "1",
    ),
    const CartItemModel(
      image: "assets/images/فلفل احمر.png",
      name: "Bell Pepper Red",
      weight: "1kg",
      price: "\$4.99",
      quantity: "1",
    ),
    const CartItemModel(
      image: "assets/images/egg chicken red.png",
      name: "Egg Chicken Red",
      weight: "4pcs",
      price: "\$1.99",
      quantity: "1",
    ),
    const CartItemModel(
      image: "assets/images/زنجبيل.png",
      name: "Ginger",
      weight: "250gm",
      price: "\$2.99",
      quantity: "1",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                "My Cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              Divider(color: Color(0xFFE2E2E2), thickness: 1),
              const SizedBox(height: 25),

              Expanded(child: VerticalListInCart(products: products)),
              const SizedBox(height: 5),
              CustomButton(title: "Go to Checkout", onTap: () {}),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
