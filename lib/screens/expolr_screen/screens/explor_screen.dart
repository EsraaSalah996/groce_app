import 'package:flutter/material.dart';
import 'package:groce_app/core/model/category_model.dart';
import 'package:groce_app/screens/beverage_screen/screen/beverages_screen.dart';
import 'package:groce_app/screens/expolr_screen/widgets/categories_grid.dart';
import 'package:groce_app/core/shared_widgets/shared_widgets/custom_search_bar.dart';

class ExplorScreen extends StatelessWidget {
  ExplorScreen({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(
      title: 'Fresh Fruits\n& Vegetable',
      photo: 'assets/images/frash fruit.png',
      boxColor: const Color(0xFFEAF6EC),
      borderColor: const Color(0xFF53B175),
    ),
    CategoryModel(
      title: 'Cooking Oil\n& Ghee',
      photo: 'assets/images/cooking oil.png',
      boxColor: const Color(0xFFFFF6E4),
      borderColor: const Color(0xFFF8A44C),
    ),
    CategoryModel(
      title: 'Meat & Fish',
      photo: 'assets/images/meat & fish.png',
      boxColor: const Color(0xFFFDE8E4),
      borderColor: const Color(0xFFF7A593),
    ),
    CategoryModel(
      title: 'Bakery &\nSnacks',
      photo: 'assets/images/bakery & snacks.png',
      boxColor: const Color(0xFFF4EBF7),
      borderColor: const Color(0xFFD3B0E0),
    ),
    CategoryModel(
      title: 'Dairy & Eggs',
      photo: 'assets/images/dairy & egg.png',
      boxColor: const Color(0xFFFFF8E5),
      borderColor: const Color(0xFFFDE598),
    ),
    CategoryModel(
      title: 'Beverages',
      photo: 'assets/images/beverages.png',
      boxColor: const Color(0xFFEDF7FC),
      borderColor: const Color(0xFFB7DFF5),
      onTap: (context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const BeveragesScreen()),
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      "Find Products",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomSearchBar(),
                  SizedBox(height: 30),
                  CategoriesGrid(categories: categories),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
