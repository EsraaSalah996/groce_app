import 'package:flutter/material.dart';
import 'package:groce_app/core/model/favourite_item_model.dart';
import 'package:groce_app/core/shared_widgets/shared_widgets/custom_button.dart';
import 'package:groce_app/screens/error_bottom_sheet/screens/error_bottom_sheet.dart';
import 'package:groce_app/screens/favourite_screen/widgets/vertical_favourite_items.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  final List<FavouriteItemModel> items = [
    const FavouriteItemModel(
      image: 'assets/images/coca cola.png',
      name: 'Sprite Can',
      unit: '325ml, Price',
      price: '\$1.50',
    ),
    const FavouriteItemModel(
      image: 'assets/images/sprite can.png',
      name: 'Diet Coke',
      unit: '355ml, Price',
      price: '\$1.99',
    ),
    const FavouriteItemModel(
      image: 'assets/images/apple juice.png',
      name: 'Apple & Grape Juice',
      unit: '2L, Price',
      price: '\$15.50',
    ),
    const FavouriteItemModel(
      image: 'assets/images/coca cola.png',
      name: 'Coca Cola Can',
      unit: '325ml, Price',
      price: '\$4.99',
    ),
    const FavouriteItemModel(
      image: 'assets/images/pepsi.png',
      name: 'Pepsi Can',
      unit: '330ml, Price',
      price: '\$4.99',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Favourite",
          style: TextStyle(
            color: Color(0xFF181725),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: const Color(0xFFE2E2E2), height: 1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: VerticalFavouriteItems(items: items)),
            Padding(
              padding: const EdgeInsets.all(25),
              child: CustomButton(
                title: "Add All To Cart",
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    isDismissible: false,
                    enableDrag: false,
                    builder: (context) => const ErrorBottomSheet(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
