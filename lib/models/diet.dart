import 'dart:core';
import 'dart:ui';

import 'package:flutter/material.dart';

class Diet {
  String name;
  String icon;
  String level;
  String duration;
  String calories;
  Color color;

  Diet({required this.name, required this.icon, required this.level,required this.duration , required this.calories,  required this.color});


  static List<Diet> getDiet() {
    List<Diet> dietList = [];
    Diet diet1 = Diet(
      name: "Keto Diet",
      icon: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Cheeseburger.png/800px-Cheeseburger.png",
      level: "Intermediate",
      duration: "30 days",
      calories: "1500 kcal",
      color: Color(0xffb8bdee),
    );

    Diet diet2 = Diet(
      name: "Vegetarian Diet",
      icon: "https://www.pngmart.com/files/5/Pancakes-Transparent-Background.png",
      level: "Beginner",
      duration: "14 days",
      calories: "1800 kcal",
      color: Color(0xffe6e8ba),
    );
    Diet diet3 = Diet(
      name: "Paleo Diet",
      icon: "https://pluspng.com/img-png/png-for-food-food-teriyaki-chicken-small-png-885.png",
      level: "Advanced",
      duration: "60 days",
      calories: "1600 kcal",
      color: Color(0xffc446c9),
    );

    Diet diet4 = Diet(
      name: "Mediterranean Diet",
      icon: "https://pluspng.com/img-png/png-for-food-food-teriyaki-chicken-small-png-885.png",
      level: "Intermediate",
      duration: "45 days",
      calories: "1700 kcal",
      color: Color(0xffd21f7f),
    );

    Diet diet5 = Diet(
      name: "Vegan Diet",
      icon: "https://pluspng.com/img-png/png-for-food-food-teriyaki-chicken-small-png-885.png",
      level: "Advanced",
      duration: "60 days",
      calories: "1400 kcal",
      color: Color(0xffe55555),
    );

    // Adding the diets to the list
    dietList.add(diet1);
    dietList.add(diet2);
    dietList.add(diet3);
    dietList.add(diet4);
    dietList.add(diet5);
    return dietList;
  }
}