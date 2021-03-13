import 'package:coffeeShop/productPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyCofee());

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class MyCofee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Main(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarColor: Colors.brown[100],
      statusBarColor: Colors.brown[100],
    ));
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 75,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_cafe_outlined), label: "Orders"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favourites"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.perm_identity,
                ),
                label: "Profile"),
          ],
          selectedFontSize: 15,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.brown[200],
          showUnselectedLabels: true,
          selectedItemColor: Colors.brown,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome, Neeraj",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'varela',
                        color: Color(0xFF473D3A),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Let's select the best taste for your \nnext coffee break!",
                      style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: "varela",
                          color: Color(0xFFc9b1a9)),
                    )
                  ],
                ),
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.brown[100],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/Neeraj.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            buildRow("Taste of the week", "See all"),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 410.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCoffeeList(
                      "assets/twocup.png",
                      "Caffe Misto",
                      "CofeeShop's",
                      "Our dark, rich espresso balanced with steamed milk and a light layer of foam.",
                      "4.99",
                      false),
                  SizedBox(
                    width: 30,
                  ),
                  _buildCoffeeList(
                      'assets/twocup.png',
                      'Caffe Latte',
                      'BrownHouse',
                      'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                      '3.99',
                      true),
                ],
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            buildRow("Explore Nearby", "See all"),
            SizedBox(
              height: 30,
            ),
            Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildImage("assets/coffee.jpg"),
                    SizedBox(
                      width: 30,
                    ),
                    buildImage("assets/coffee2.jpg"),
                    SizedBox(
                      width: 30.0,
                    ),
                    buildImage("assets/coffee3.jpg")
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Container buildImage(String imagePath) {
    return Container(
      height: 200,
      width: 200.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
    );
  }

  Row buildRow(String label1, String label2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label1,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'varela',
            fontWeight: FontWeight.w600,
            color: Color(0xFF473D3A),
          ),
        ),
        Text(
          label2,
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'varela',
              fontWeight: FontWeight.w600,
              color: Color(0xFFc9b1a9)),
        ),
      ],
    );
  }

  _buildCoffeeList(String imgPath, String coffeeName, String shopName,
      String description, String price, bool isFavorite) {
    return InkWell(
      onTap: () {
        print("in Inkwell");
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProductPage()));
      },
      child: Container(
        height: 300,
        width: 225,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 335.0,
                ),
                Positioned(
                  top: 75.0,
                  child: Container(
                    height: 260.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.yellow[700]),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            shopName,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            coffeeName,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$" + price,
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        color: isFavorite
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () {}),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    left: 60,
                    top: -25.0,
                    child: Container(
                      height: 200,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath), fit: BoxFit.cover)),
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
                onPressed: () {},
                color: Colors.brown,
                minWidth: 300,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)),
                child: Text(
                  "Order Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
