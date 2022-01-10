import 'package:flutter/material.dart';
import 'package:food_and_drink/screen/account.dart';
import 'package:food_and_drink/screen/category_food_page.dart';
import 'package:food_and_drink/screen/category_drink_page.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int state = 1;
  String textTile = 'Food';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue, fontFamily: 'Lobster'),
      title: 'Food and Drink',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(textTile),
            centerTitle: true,
          ),
          body: state == 1
              ? CategoryFoodPage()
              : (state == 0 ? CategoryDrinkPage() : Account()),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: state == 1
                ? Icon(Icons.food_bank_rounded)
                : (state == 0
                    ? Icon(Icons.no_drinks_rounded)
                    : Icon(Icons.account_circle_outlined)),
          ),
          floatingActionButtonLocation: state == 1
              ? FloatingActionButtonLocation.centerDocked
              : (state == 0
                  ? FloatingActionButtonLocation.startDocked
                  : FloatingActionButtonLocation.endDocked),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: state == 0
                        ? Container()
                        : IconButton(
                            icon: Icon(Icons.no_drinks_rounded),
                            splashRadius: 20,
                            onPressed: () {
                              setState(() {
                                state = 0;
                                textTile = 'Drink';
                              });
                            },
                          ),
                  ),
                  Expanded(
                    child: state == 1
                        ? Container()
                        : IconButton(
                            icon: Icon(Icons.food_bank_rounded),
                            splashRadius: 20,
                            onPressed: () {
                              setState(() {
                                state = 1;
                                textTile = 'Food';
                              });
                            },
                          ),
                  ),
                  Expanded(
                    child: state == 2
                        ? Container()
                        : IconButton(
                            icon: Icon(Icons.account_circle_outlined),
                            splashRadius: 20,
                            onPressed: () {
                              setState(() {
                                state = 2;
                                textTile = 'Account';
                              });
                            },
                          ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
