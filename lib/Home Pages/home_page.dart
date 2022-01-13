import 'package:flutter/material.dart';
import '../Food Show/product.dart';

class FastFood extends StatelessWidget {
  final String images;
  final String restauranName;
  final String productName;
  final double price;
  FastFood(
      {required this.images,
      required this.restauranName,
      required this.productName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 200,
            height: 200,
            child: Expanded(
                child: GestureDetector(
              child: Image.asset('$images'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Product(
                              productType: "Fast Food",
                            )));
              },
            ))),
        SizedBox(
          height: 5,
        ),
        Text(
          "$restauranName",
          style: TextStyle(color: Colors.blue, fontSize: 15),
        ),
        const SizedBox(
          height: 05,
        ),
        Text(
          "$productName",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 05,
        ),
        Text(
          "${price.round()} Taka",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        )
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color(0xFF042825),
          centerTitle: true,
          title: Column(children: [
            Text("Food"),
          ]),
          actions: [
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.backpack,
                  size: 21,
                  color: Color(0xFF042825),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(width: 15),
            GestureDetector(
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 21,
                  color: Color(0xFF042825),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 07,
                ),
                const Text(
                  "Best selling Foods",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Center(
                      child: Text(
                        "Show More",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FastFood(
                          images: "images/pijja1.jpg",
                          restauranName: "Cafe Rubi",
                          productName: "Beef Pijja",
                          price: 500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FastFood(
                          images: "images/burger4.jpg",
                          restauranName: "Cafe Heaven",
                          productName: "Beef Burger",
                          price: 500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FastFood(
                          images: "images/pijja2.jpg",
                          restauranName: "FNF",
                          productName: "chicken Pijja",
                          price: 500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FastFood(
                          images: "images/pijja3.jpg",
                          restauranName: "BRBQ",
                          productName: "special Pijja",
                          price: 500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FastFood(
                          images: "images/burger5.jpg",
                          restauranName: "Luminos Pijja",
                          productName: "Beef Burger",
                          price: 500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FastFood(
                          images: "images/pijja4.jpg",
                          restauranName: "Luminos Pijja",
                          productName: "Beef Pijja",
                          price: 500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FastFood(
                          images: "images/burger1.jpg",
                          restauranName: "Cafe Rubi",
                          productName: "Chicken Burger",
                          price: 500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FastFood(
                          images: "images/burger4.jpg",
                          restauranName: "Food Garder",
                          productName: "vagetable Burger",
                          price: 500,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    )),

                SizedBox(
                  height: 20,
                ),

                Stack(
                  fit: StackFit.passthrough,
                  children: <Widget>[
                    // Max Size Widget
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Product(productType: "Fruits")));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        child: Expanded(
                          child: Image.asset('images/fruits.jpg'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      left: 20,
                      child: Container(
                          child: Column(
                        children: [
                          Text(
                            "Fruits",
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: Center(
                              child: Text(
                                "Shop Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  ],
                ),

                Stack(
                  fit: StackFit.passthrough,
                  children: <Widget>[
                    // Max Size Widget
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        // margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 300,
                        //color: Colors.green,
                        child: Expanded(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Product(productType: "Fast Food")));
                              },
                              child: Image.asset('images/burger1.jpg')),
                        ),
                      ),
                    ),
                    Positioned(
                      //top: 30
                      bottom: 70,
                      left: 20,
                      //this.bottom,
                      //this.left,

                      child: Container(
                          //  height: 100,
                          // width: 150,
                          // color: Colors.blue,
                          child: Column(
                        children: [
                          Text(
                            "Fast Food",
                            style: TextStyle(color: Colors.white),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1)),
                            child: Center(
                              child: Text(
                                "Shop Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  ],
                ),

                Text(
                  "Keep up to date",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(
                  height: 05,
                ),
                Text(
                  "Keep on top of the latest trends.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  "Get offers straight to your inbox",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF236E6E),
                      fontSize: 30),
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter your E-mail",
                        ),
                        onFieldSubmitted: (_) {},
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FlatButton(
                        onPressed: () {},
                        color: Colors.black,
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
