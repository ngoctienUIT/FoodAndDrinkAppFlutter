import 'package:flutter/material.dart';
import 'package:food_and_drink/class/category_drink.dart';
import 'package:food_and_drink/screen/drink_page.dart';

class CategoryDrinkItem extends StatelessWidget {
  CategoryDrink categoryDrink;
  CategoryDrinkItem({required this.categoryDrink});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DrinkPage(
                  categoryDrink: categoryDrink,
                )));
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(categoryDrink.url),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Text(
                categoryDrink.name,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
