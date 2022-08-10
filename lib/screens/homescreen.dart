import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:page_indicator/page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Widget buildMyNavBar(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 165, 92, 92),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        // صف يحتوي على ازرار فيها ايكون
        IconButton(
          enableFeedback: false,
          onPressed: () {
            setState(() {
              pageIndex = 0;
            });
          },
          icon: pageIndex == 0
              ? const Icon(
                  Icons.menu,
                  color: Color.fromARGB(2255, 182, 182, 182),
                  size: 35,
                )
              : const Icon(
                  Icons.menu_outlined,
                  color: Color.fromARGB(255, 73, 72, 72),
                  size: 35,
                ),
        ),
        IconButton(
          enableFeedback: false,
          onPressed: () {
            setState(() {
              pageIndex = 1;
            });
          },
          icon: pageIndex == 1
              ? const Icon(
                  Icons.add_shopping_cart,
                  color: Color.fromARGB(2255, 182, 182, 182),
                  size: 35,
                )
              : const Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Color.fromARGB(255, 73, 72, 72),
                  size: 35,
                ),
        ),

        IconButton(
          enableFeedback: false,
          onPressed: () {
            setState(() {
              pageIndex = 2;
            });
          },
          icon: pageIndex == 2
              ? const Icon(
                  Icons.keyboard_control,
                  color: Color.fromARGB(2255, 182, 182, 182),
                  size: 35,
                )
              : const Icon(
                  Icons.keyboard_control_outlined,
                  color: Color.fromARGB(255, 73, 72, 72),
                  size: 35,
                ),
        ),
      ]),
    );
  }
}

class Page1 extends StatelessWidget {
  //فيها المنيو
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Image.asset(
          "assets/images/lg.png",
          fit: BoxFit.fill,
          height: 60,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(1),
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 0,
            child: CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/pic5.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/pic6.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 130,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),
          Card(
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color.fromARGB(207, 255, 255, 255),
            child: ListTile(
              title: Text(
                "Caramelized Pecan",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "A luxurious piece of chocolate, topped with caramelized pecans.",
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 72, 72),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Color.fromARGB(255, 165, 92, 92),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic7.jpg"),
              ),
              trailing: Icon(Icons.shopping_cart_outlined),
            ),
          ),
          Card(
            elevation: 5,
            margin: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color.fromARGB(207, 255, 255, 255),
            child: ListTile(
              title: Text(
                "Nutella feuilletine",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Nutella with crunchy feuilletine pieces.",
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 72, 72),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Color.fromARGB(255, 165, 92, 92),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic8.jpg"),
              ),
              trailing: Icon(Icons.shopping_cart_outlined),
            ),
          ),
          Card(
            elevation: 5,
            margin: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color.fromARGB(207, 255, 255, 255),
            child: ListTile(
              title: Text(
                "Pistacho",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Belgian pistachio filling, rich and delicious.",
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 72, 72),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Color.fromARGB(255, 165, 92, 92),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic9.jpg"),
              ),
              trailing: Icon(Icons.shopping_cart_outlined),
            ),
          ),
          Card(
            elevation: 5,
            margin: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color.fromARGB(207, 255, 255, 255),
            child: ListTile(
              title: Text(
                "Pecan Butter",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "A mixture of pecan butter and belgian chocolate.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
              textColor: Color.fromARGB(255, 165, 92, 92),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic10.jpg"),
              ),
              trailing: Icon(Icons.shopping_cart_outlined),
            ),
          ),
          Card(
            elevation: 5,
            margin: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color.fromARGB(207, 255, 255, 255),
            child: ListTile(
              title: Text(
                "Salted Caramel",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Soft caramel with sprinkles of salt.",
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 72, 72),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Color.fromARGB(255, 165, 92, 92),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic11.jpg"),
              ),
              trailing: Icon(Icons.shopping_cart_outlined),
            ),
          ),
          Card(
            elevation: 5,
            margin: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color.fromARGB(207, 255, 255, 255),
            child: ListTile(
              title: Text(
                "Chocolate Ganache",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Classic chocolate ganache, smooth texture,delicious and luxurious taste.",
                style: TextStyle(
                  color: Color.fromARGB(255, 73, 72, 72),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Color.fromARGB(255, 165, 92, 92),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic12.JPG"),
              ),
              trailing: Icon(Icons.shopping_cart_outlined),
            ),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
          margin: EdgeInsets.only(top: 60),
          width: double.infinity,
          child: Card(
              color: Color.fromARGB(255, 165, 92, 92),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 40, bottom: 0, left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Dr. Maseed",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                            "Dr. Maseed is a radiation oncologist in Indianapolis, Indiana and is affiliated with multiple hospitals in the area. He has been in practice for more than 20 years.",
                            style: TextStyle()),
                        ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: Text(
                                "APPOINTMENT",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("assets/images/pic7.jpg"),
        ),
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
