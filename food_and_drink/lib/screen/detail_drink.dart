import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_and_drink/class/drink.dart';

class DetailDrink extends StatelessWidget {
  Drink drink;
  DetailDrink({required this.drink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drink.name),
        centerTitle: true,
      ),
      body: Column(
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
                  image: drink.urlName),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
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
                itemCount: drink.ingredients.length,
                itemBuilder: (context, index) {
                  String ingredient = drink.ingredients[index];

                  return ListTile(
                    leading: CircleAvatar(child: Text('#${index + 1}')),
                    title: Text(ingredient),
                  );
                }),
          )
        ],
      ),
    );
  }
}
