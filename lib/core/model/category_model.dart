import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String photo;
  final Color boxColor;
  final Color borderColor;
  final Function(BuildContext)? onTap;

  CategoryModel({
    required this.title,
    required this.photo,
    required this.boxColor,
    required this.borderColor,
    this.onTap,
  });
}
