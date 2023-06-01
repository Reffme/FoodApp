import 'package:flutter/material.dart';

class ProductModel {
  final IconData image;
  final Color colorImage;
  final String name;
  final String description;
  final String category;
  final int price;

  const ProductModel(
      {required this.colorImage,
      required this.image,
      required this.name,
      required this.description,
      required this.category,
      required this.price});
}
