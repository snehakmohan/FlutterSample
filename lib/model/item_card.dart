import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          flatButton("All", isSelected: true),
          flatButton("PlayStation",),
          flatButton("Nintendo",),
          flatButton("X-Box",),
          flatButton("PC",),
          flatButton("Candels",),
        ],
      ),
    );
  }
}

Padding flatButton(String text, {bool isSelected = false}) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: FlatButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.white,fontSize: 16,),
      ),
      shape: StadiumBorder(),
      color: isSelected ? Colors.blue : Colors.white54,

    ),
  );
}
