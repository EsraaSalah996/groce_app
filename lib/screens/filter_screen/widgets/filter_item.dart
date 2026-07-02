import 'package:flutter/material.dart';
import 'package:groce_app/core/model/filter_model.dart';

class FilterItem extends StatelessWidget {
  final FilterModel item;
  final VoidCallback onTap;

  const FilterItem({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: item.isSelected,
      onChanged: (_) => onTap(),
      title: Text(item.title),
      activeColor: const Color(0xff53B175),
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
    );
  }
}
