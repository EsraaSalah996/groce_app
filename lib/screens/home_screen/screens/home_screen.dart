import 'package:flutter/material.dart';
import 'package:groce_app/model/peoduct_data_model.dart';
import 'package:groce_app/screens/home_screen/widgets/horizontal_product_list.dart';
import 'package:groce_app/shared_widgets/bottom_bar.dart';
import 'package:groce_app/shared_widgets/custom_search_bar.dart';
import 'package:groce_app/shared_widgets/title_header.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Product> exclusiveOffersList = [
    Product(
      photo: 'assets/images/banana.png',
      name: 'Organic Bananas',
      weight: '7pcs, Priceg',
      price: '\$4.99',
    ),
    Product(
      photo: 'assets/images/تفاح.png',
      name: 'Red Apple',
      weight: '1kg, Priceg',
      price: '\$4.99',
    ),
  ];
  final List<Product> bestSellingList = [
    Product(
      photo: 'assets/images/فلفل احمر.png',
      name: 'Bell Pepper Red',
      weight: '1kg, Priceg',
      price: '\$4.99',
    ),
    Product(
      photo: 'assets/images/زنجبيل.png',
      name: 'Ginger',
      weight: '250gm, Priceg',
      price: '\$4.99',
    ),
  ];
  final List<Product> groceriesList = [
    Product(
      photo: "assets/images/beef bone.png",
      name: 'Beef Bone',
      weight: '1kg, Priceg',
      price: '\$4.99',
    ),
    Product(
      photo: 'assets/images/chicken.png',
      name: 'Chicken',
      weight: '250gm, Priceg',
      price: '\$4.99',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: ListView(
            children: [
              Column(
                children: [
                  Image.asset("assets/images/logo.png", width: 30, height: 35),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fmd_good_rounded),
                      Text(
                        "Dhaka, Banassre",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4C4F4D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomSearchBar(),
                  SizedBox(height: 20),
                  Image.asset("assets/images/banner.png"),
                  SizedBox(height: 30),
                  TitleHeader(title: "Exclusive Offer"),
                  const SizedBox(height: 24),
                  HorizontalProductList(products: exclusiveOffersList),

                  const SizedBox(height: 30),

                  TitleHeader(title: "Best Selling"),
                  const SizedBox(height: 24),
                  HorizontalProductList(products: bestSellingList),
                  const SizedBox(height: 30),
                  TitleHeader(title: "Groceries"),
                  const SizedBox(height: 24),
                  HorizontalProductList(products: groceriesList),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
