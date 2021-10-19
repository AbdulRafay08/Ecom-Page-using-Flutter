import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: Row(
            children: [
              const Image(
                image: AssetImage("assets/icon.jpg"),
                height: 35,
                width: 35,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "mobi",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                "sports",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.blueGrey[900],
              size: 27,
            ),
          )
        ],
      ),
      bottomNavigationBar:

          // BottomNavigationBar(
          //   backgroundColor: Colors.amber,
          //   items: const <BottomNavigationBarItem>[
          //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          //     BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "more"),
          //     BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "bag"),
          //     BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "ac"),
          //     BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: "moress"),
          //   ],),
          getFooter(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Running",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                Text(
                  "15 Results",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          getbody("assets/shoes1.png", "\$99.99", "Men'S", "FuelCell Echo",
              "Mens's"),
          getbody("assets/shoes2.jpg", "\$129.9", "Men'S FuelCell", "Rebet",
              "Men's"),
          getbody("assets/shoes3.png", "\$149.9", "Side Block's", "1200", ""),
        ],
      ),
    );
  }

  Widget getFooter() {
    List iconItems = [
      Icons.home_outlined,
      Icons.category_outlined,
      Icons.shopping_bag_outlined,
      Icons.person_outline,
      Icons.more_horiz,
    ];
    List textItems = ["Home", "Category", "Bag", "Profile", "More"];

    return Container(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(textItems.length, (index) {
              return Column(
                children: [
                  Icon(
                    iconItems[index],
                    color: Colors.orange[700],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    textItems[index],
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.orange[700],
                    ),
                  ),
                ],
              );
            })),
      ),
    );
  }

  Widget getbody(img, price, t1, t2, t3) {
    return Stack(
      children: [
        Container(
          margin:
              const EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 15),
          height: 130,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(
                height: 110,
                width: 110,
                child: Image.asset(
                  img,
                  height: 100,
                  width: 100,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t1,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    t2,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    t3,
                    style: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star_rounded,
                        size: 20,
                      ),
                      Icon(Icons.star_rounded, size: 20),
                      Icon(Icons.star_rounded, size: 20),
                      Icon(Icons.star_rounded, size: 20),
                      Icon(Icons.star_rounded, size: 20),
                    ],
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 115,
          left: 360,
          height: 37,
          width: 37,
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
            child: const Icon(Icons.shopping_bag),
          ),
        ),
      ],
    );
  }
}
