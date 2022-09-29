import 'package:flutter/material.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildcolumn("assets/images/cry.png", "FarCry 6","50% OFF"),
        buildcolumn("assets/images/rider1.png", "Riders Republic","30% OFF"),
      ],
    );
  }
}

Column buildcolumn(
  String image,
  String name, String text,

) {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Container(
        width: 320,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
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
        width: 320,
        height: 200,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            color: Colors.white24),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_outlined),
                    color: Colors.blue,
                  )
                ],
              ),
              Row(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.blueGrey,
                        ),
                        Text(
                          "12 Feb 2020",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                    shape: StadiumBorder(),
                    color: Colors.white10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.flash_on,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          "Action",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                    shape: StadiumBorder(),
                    color: Colors.white10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.flash_on,
                          color: Colors.deepPurpleAccent,
                        ),
                        Text(
                          "Adventure",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                    shape: StadiumBorder(),
                    color: Colors.white10,
                  ),
                ],
              ),
              Row(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_offer_outlined,
                          color: Colors.yellow,
                        ),
                        Text(
                          text,
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                    shape: StadiumBorder(),
                    color: Colors.white10,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "download",
                    style: TextStyle(fontSize: 17, color: Colors.white24),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Icon(
                    Icons.android,
                    color: Colors.green,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.blueAccent,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.sports_baseball,
                    size: 35,
                    color: Colors.red,
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  // Icon(
                  //   Icons.door,size: 35,
                  //   color: Colors.red,
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
