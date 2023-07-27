import 'dart:core';
import 'dart:core';
import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
  String name;
  Color color;
  String img;

  Category({required this.name, required this.color, required this.img,});

  static List<Category> getCategories() {
    List<Category> categories = [
      Category(
        name: "Fruits",
        color: Colors.lightGreen,
        img: "https://example.com/fruits.jpg",
      ),
      Category(
        name: "Salads",
        color: Colors.lightBlue,
        img: "https://example.com/salads.jpg",
      ),
      Category(
        name: "Salads",
        color: Color(0xffb8bdee),
        img: "https://example.com/salads.jpg",
      ),
      Category(
        name: "Salads",
        color: Colors.grey,
        img: "https://example.com/salads.jpg",
      ),
    ];

    return categories;
  }
}