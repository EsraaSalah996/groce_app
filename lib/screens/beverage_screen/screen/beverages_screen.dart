import 'package:flutter/material.dart';
import 'package:groce_app/core/model/beverages_data.dart';
import 'package:groce_app/screens/beverage_screen/widgets/beverage_item.dart';
import 'package:groce_app/screens/filter_screen/widgets/filter_bottom_sheet.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(),
        title: const Text(
          "Beverages",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  builder: (_) => const FilterBottomSheet(),
                );
              },
              child: Icon(Icons.tune),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: beverages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.67,
          ),
          itemBuilder: (context, index) {
            return BeverageItem(beverage: beverages[index]);
          },
        ),
      ),
    );
  }
}
