import 'package:flutter/material.dart';
import 'package:groce_app/widgets/bottom_bar.dart';
import 'package:groce_app/widgets/custom_search_bar.dart';
import 'package:groce_app/widgets/product_card.dart';
import 'package:groce_app/widgets/title_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: SingleChildScrollView(
            child: Column(
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
                SizedBox(height: 24),
                Row(
                  children: [
                    ProductCard(
                      photo: "assets/images/تفاح.png",
                      name: "Red Apple",
                      weight: "1kg, Priceg",
                      price: "\$4.99",
                    ),
                    ProductCard(
                      photo: "assets/images/تفاح.png",
                      name: "Red Apple",
                      weight: "1kg, Priceg",
                      price: "\$4.99",
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TitleHeader(title: "Best Selling"),
                Row(
                  children: [
                    ProductCard(
                      photo: "assets/images/فلفل احمر.png",
                      name: "Bell Pepper Red",
                      weight: "1kg, Priceg",
                      price: "\$4.99",
                    ),
                    ProductCard(
                      photo: "assets/images/زنجبيل.png",
                      name: "Ginger",
                      weight: "1kg, Priceg",
                      price: "\$4.99",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
