import 'package:flutter/material.dart';
import 'package:food_and_drink/class/food.dart';
import 'package:food_and_drink/class/category_food.dart';
import 'package:food_and_drink/data/data.dart';
import 'package:food_and_drink/screen/detail_food.dart';

class FoodPage extends StatelessWidget {
  CategoryFood categoryFood;
  FoodPage({required this.categoryFood});

  @override
  Widget build(BuildContext context) {
    List<Food> foods =
        FoodData.where((element) => categoryFood.id == element.categoryId)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryFood.name),
        centerTitle: true,
      ),
      body: Center(
        child: foods.length > 0
            ? ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  Food food = foods[index];
                  return InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailFood(food: food)));
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: ClipRRect(
                            child: Center(
                              child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/Loading.gif',
                                  image: food.urlName),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              food.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black45,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                          ),
                          right: 30,
                          bottom: 30,
                        ),
                        Positioned(
                          left: 30,
                          top: 30,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              'Duration: ${food.duration.inMinutes}',
                              style: TextStyle(color: Colors.white),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                })
            : Center(
                child: Text('Không có món nào ở đây :v'),
              ),
      ),
    );
  }
}
