import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  Account();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: ClipRRect(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/Loading.gif',
              image: 'https://avatars.githubusercontent.com/u/94039133',
              width: 250,
            ),
            borderRadius: BorderRadius.circular(180),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            'Trần Ngọc Tiến',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            '2002',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            'Khánh Hòa, Việt Nam',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
