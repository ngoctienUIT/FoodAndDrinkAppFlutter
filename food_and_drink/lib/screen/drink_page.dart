import 'package:flutter/material.dart';
import 'package:food_and_drink/class/category_drink.dart';
import 'package:food_and_drink/class/drink.dart';
import 'package:food_and_drink/data/data.dart';
import 'package:food_and_drink/screen/detail_drink.dart';

class DrinkPage extends StatelessWidget {
  CategoryDrink categoryDrink;
  DrinkPage({required this.categoryDrink});

  @override
  Widget build(BuildContext context) {
    List<Drink> drinks =
        DrinkData.where((element) => categoryDrink.id == element.categoryId)
            .toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryDrink.name), centerTitle: true),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            Drink drink = drinks[index];

            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailDrink(
                      drink: drink,
                    ),
                  ),
                );
              },
              child: Stack(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                    child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/Loading.gif',
                        image: drink.urlName),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 30,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Text(
                      drink.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                )
              ]),
            );
          }),
    );
  }
}
