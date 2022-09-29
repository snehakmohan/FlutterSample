import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 70,
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 22.0,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/g1.png'),
              radius: 20.0,
            ),
          ),
        ),
        SizedBox(
          width:7,
        ),
        Text(
          "John",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 120,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.blue, size: 30)),

        IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: Colors.blue, size: 30)),
      ],
    );
  }
}
