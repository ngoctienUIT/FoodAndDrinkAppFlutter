import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_and_drink/data/data.dart';
import 'package:food_and_drink/model/category_food_item.dart';

class CategoryFoodPage extends StatelessWidget {
  CategoryFoodPage();
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      children: FoodCategoryData.map(
          (category) => CategoryFoodItem(categoryFood: category)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 4 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
