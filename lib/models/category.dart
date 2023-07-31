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
        img: "https://3.bp.blogspot.com/-flHhaY9mSaw/VONbmMbuy7I/AAAAAAAAB5I/w4lIPW8M6qI/s1600/fruits4.png",
      ),
      Category(
        name: "Salads",
        color: Colors.lightBlue,
        img: "https://www.pngmart.com/files/1/Salad-Transparent-PNG.png",
      ),
      Category(
        name: "Meat",
        color: Color(0xffb8bdee),
        img: "https://w7.pngwing.com/pngs/17/1014/png-transparent-sliced-raw-meat-steak-seafood-red-meat-beef-meat-ingredients-food-roast-beef-chicken-meat.png",
      ),
      Category(
        name: "Drinks",
        color: Colors.grey,
        img: "https://3.bp.blogspot.com/-flHhaY9mSaw/VONbmMbuy7I/AAAAAAAAB5I/w4lIPW8M6qI/s1600/fruits4.png",
      ),
    ];

    return categories;
  }
}