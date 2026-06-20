import 'package:flutter/material.dart';
import 'package:groce_app/model/category_model.dart';
import 'package:groce_app/screens/expolr_screen/widgets/product_category_card.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 174 / 189,
      ),
      itemBuilder: (context, index) {
        final category = categories[index];

        return ProductCategoryCard(
          title: category.title,
          photo: category.photo,
          boxColor: category.boxColor,
          borderColor: category.borderColor,
        );
      },
    );
  }
}
