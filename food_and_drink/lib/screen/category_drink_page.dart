import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_and_drink/data/data.dart';
import 'package:food_and_drink/model/category_drink_item.dart';

class CategoryDrinkPage extends StatelessWidget {
  CategoryDrinkPage();

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      children: CategoryDrinkData.map((categoryDrink) => CategoryDrinkItem(
            categoryDrink: categoryDrink,
          )).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 4 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
