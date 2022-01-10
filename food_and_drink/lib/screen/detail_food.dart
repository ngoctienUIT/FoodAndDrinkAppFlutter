import 'package:flutter/material.dart';
import 'package:food_and_drink/class/food.dart';

class DetailFood extends StatelessWidget {
  Food food;
  DetailFood({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: ClipRRect(
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/Loading.gif',
                  image: food.urlName,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'Nguyên Liệu:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: food.ingredients.length,
                  itemBuilder: (context, index) {
                    String ingredient = food.ingredients[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '#${index + 1}',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      title: Text(ingredient),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
