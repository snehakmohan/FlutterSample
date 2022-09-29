import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color:Colors.blue,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:3, horizontal:15),
              child: Row(
                children: [
                  Icon(Icons.flash_on,color: Colors.grey,),
                  Text(
                    "All",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color:Colors.black,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:3, horizontal:15),
              child: Row(
                children: [
                  Icon(Icons.flash_on,color: Colors.deepOrange,),
                  Text(
                    "Acton",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color:Colors.blue,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:3, horizontal:15),
              child: Row(
                children: [
                  Icon(Icons.flash_on,color: Colors.grey,),
                  Text(
                    "Adventure",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color:Colors.black,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:3, horizontal:15),
              child: Row(
                children: [
                  Icon(Icons.nfc_outlined,color: Colors.pink,),
                  Text(
                    "Puzzle",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}