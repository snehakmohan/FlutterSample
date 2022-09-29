import 'package:flutter/material.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildColumn("assets/images/far01.png", "FarCry 6"),
          buildColumn("assets/images/rider3.png", "Riders Republic"),
          buildColumn("assets/images/far1.png", "FarCry 6"),
        ],
      ),
    );
  }
  Padding buildColumn(String image, String name,) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: 300,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                image: DecorationImage(
                  // fit: BoxFit.cover,
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 50,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.white24),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_outlined),
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
