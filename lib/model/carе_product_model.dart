import 'package:flutter/material.dart';

class CartProductModel {
  final IconData image;
  final Color colorImage;
  final String name;
  final int price;
  int count;

  CartProductModel(
      {required this.colorImage,
      required this.image,
      required this.name,
      required this.price,
      this.count = 1});
}
