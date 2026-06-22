import 'package:flutter/material.dart';
import 'package:groce_app/core/model/favourite_item_model.dart';

class FavouriteItemCard extends StatelessWidget {
  final FavouriteItemModel item;

  const FavouriteItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(item.image, width: 60, height: 60, fit: BoxFit.contain),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF181725),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.unit,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7C7C7C),
                  ),
                ),
              ],
            ),
          ),
          Text(
            item.price,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF181725),
            ),
          ),
          const SizedBox(width: 15),
          const Icon(Icons.chevron_right, color: Color(0xFF181725), size: 24),
        ],
      ),
    );
  }
}
