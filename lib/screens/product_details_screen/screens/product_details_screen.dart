import 'package:flutter/material.dart';
import 'package:groce_app/screens/my_cart/screens/my_cart_screen.dart';
import 'package:groce_app/screens/product_details_screen/widgets/expansible_widget.dart';
import 'package:groce_app/screens/product_details_screen/widgets/nutrition_part.dart';
import 'package:groce_app/screens/product_details_screen/widgets/price_and_quantity.dart';
import 'package:groce_app/screens/product_details_screen/widgets/product_details_header.dart';
import 'package:groce_app/screens/product_details_screen/widgets/product_title.dart';
import 'package:groce_app/screens/product_details_screen/widgets/review_part.dart';
import 'package:groce_app/core/shared_widgets/shared_widgets/custom_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductDetailsHeader(),
            SizedBox(height: 30),
            ProductTitle(),
            SizedBox(height: 30),
            PriceAndQuantity(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Divider(color: Color(0xffE2E2E2), thickness: 1),
            ),
            ExpansibleWidget(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Divider(color: Color(0xffE2E2E2), thickness: 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  NutritionPart(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(color: Color(0xffE2E2E2), thickness: 1),
                  ),
                  ReviewPart(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: CustomButton(
                title: "Add To Basket",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCartScreen()),
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
