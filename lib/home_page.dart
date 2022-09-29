import 'package:flutter/material.dart';
import 'package:new_project/model/category_card.dart';

import 'app_bar.dart';
import 'home_body.dart';
import 'model/item_card.dart';
import 'model/view_body.dart';
import 'model/week_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            CustomAppbar()]),
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }
}

Widget getBody() {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: ListView(
      children: <Widget>[
        Divider(
          color: Colors.grey,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              "Popular",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ],
        ),
        HomeBody(),
        Divider(
          color: Colors.grey,
        ),
        ItemCard(),
        CategoryCard(),
        Divider(
          color: Colors.grey,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              "Today",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
          ],
        ),
        ViewBody(),
        Divider(
          color: Colors.grey,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              "This Week",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        WeekBody(),
      ],
    ),
  );
}


