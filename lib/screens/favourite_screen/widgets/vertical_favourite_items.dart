import 'package:flutter/material.dart';
import 'package:groce_app/core/model/favourite_item_model.dart';
import 'package:groce_app/screens/favourite_screen/widgets/favourite_item_card.dart';

class VerticalFavouriteItems extends StatelessWidget {
  final List<FavouriteItemModel> items;

  const VerticalFavouriteItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      itemCount: items.length,
      itemBuilder: (context, index) {
        // هنا بننادي على الكارت اللي عملناه في الخطوة 2
        return FavouriteItemCard(item: items[index]);
      },
      separatorBuilder: (context, index) {
        return const Divider(color: Color(0xFFE2E2E2), thickness: 1, height: 1);
      },
    );
  }
}
