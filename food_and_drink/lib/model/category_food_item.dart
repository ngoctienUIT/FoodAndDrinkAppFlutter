import 'package:flutter/material.dart';
import 'package:food_and_drink/class/category_food.dart';
import 'package:food_and_drink/screen/food_page.dart';

class CategoryFoodItem extends StatelessWidget {
  CategoryFood categoryFood;
  CategoryFoodItem({required this.categoryFood});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.purple,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                categoryFood.name,
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(categoryFood.url),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FoodPage(categoryFood: categoryFood),
          ),
        );
      },
    );
  }
}
