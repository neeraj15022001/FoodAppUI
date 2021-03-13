import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(ProductPage());

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int segmentedControlGroupValue = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0xFFF4B4B8),
        systemNavigationBarColor: Colors.white));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF4B4B8),
        body: Stack(children: [
          Positioned(
            top: 30,
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          "Caramel \nMacchiato",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Freshly steamed milk with \nvanilla-falvoured syrup is \nmarked with espresso and \ntopped with caramel drizzle \nfor an oh-so-sweet finish.",
                      style: TextStyle(height: 2.0, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.brown[800],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('4.2',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 15.0,
                                    color: Colors.white)),
                            Text('/5',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 13.0,
                                    color: Color(0xFF7C7573)))
                          ],
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Wrap(
                            textDirection: TextDirection.rtl,
                            spacing: -10,
                            direction: Axis.horizontal,
                            children: [
                              buildAvatar("assets/model.jpg"),
                              buildAvatar("assets/model2.jpg"),
                              buildAvatar("assets/man.jpg")
                            ],
                          ),
                          Text(
                            "+27 more",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(color: Colors.red),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                ),
              ),
              Positioned(
                top: 150,
                right: -70,
                child: Container(
                  height: 350.0,
                  width: 350,
                  decoration: BoxDecoration(
                      // color: Colors.blue[100],
                      image: DecorationImage(
                          image: AssetImage("assets/pinkcup-min.png"),
                          fit: BoxFit.contain)),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 + 5,
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: MediaQuery.of(context).size.height / 2 - 5,
                  width: MediaQuery.of(context).size.width,
                  // decoration: BoxDecoration(color: Colors.blue[100]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Preparation Time",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.brown,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "5min",
                        style: TextStyle(
                          color: Colors.brown[100],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Ingredients",
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildIngredient(
                                Colors.blue[300],
                                Icon(
                                  Icons.opacity,
                                  color: Colors.white,
                                ),
                                "Water"),
                            SizedBox(
                              width: 20.0,
                            ),
                            buildIngredient(
                                Colors.brown[300],
                                Icon(Icons.emoji_food_beverage_outlined,
                                    color: Colors.white),
                                "Brewed \nEspresso"),
                            SizedBox(
                              width: 20.0,
                            ),
                            buildIngredient(
                                Colors.pink[300],
                                Icon(Icons.view_in_ar, color: Colors.white),
                                "Sugar"),
                            SizedBox(
                              width: 20.0,
                            ),
                            buildIngredient(
                                Colors.green[300],
                                Icon(
                                  Icons.liquor,
                                  color: Colors.white,
                                ),
                                "Toffee Nut \nSyrup"),
                            SizedBox(
                              width: 20.0,
                            ),
                            buildIngredient(
                                Colors.teal[300],
                                Icon(
                                  Icons.terrain_rounded,
                                  color: Colors.white,
                                ),
                                "Natural \nFlavours"),
                            SizedBox(
                              width: 20.0,
                            ),
                            buildIngredient(
                                Colors.amber[300],
                                Icon(
                                  Icons.liquor,
                                  color: Colors.white,
                                ),
                                "Vanilla \nSyrup"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Nutritional Information",
                          style: TextStyle(
                              color: Colors.brown,
                              fontWeight: FontWeight.w600,
                              fontSize: 17)),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Calories",
                              style: TextStyle(
                                  color: Colors.brown[100],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "250",
                              style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            )),
                            builder: (BuildContext context) {
                              return Container(
                                height: MediaQuery.of(context).size.height -
                                    MediaQuery.of(context).size.height / 4,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.close,
                                            color: Colors.grey[500],
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "Temperature",
                                              style: TextStyle(
                                                color: Colors.brown,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            CupertinoSegmentedControl(
                                                groupValue:
                                                    segmentedControlGroupValue,
                                                children: {
                                                  0: Text("Hot"),
                                                  1: Text("Cold"),
                                                },
                                                onValueChanged: (index) {
                                                  setState(() {
                                                    segmentedControlGroupValue =
                                                        index;
                                                  });
                                                })
                                          ],
                                        ),
                                        Column(
                                          children: [],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Center(
                            child: Text(
                          "Make Order",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                        color: Colors.brown,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  Column buildIngredient(Color color, Icon icon, String title) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: color),
          child: icon,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 13,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Container buildAvatar(String imagePath) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Color(0xFFF4B4B8)),
          color: Color(0xFFF4B4B8),
          shape: BoxShape.circle,
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
    );
  }
}
