import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Fruits extends StatelessWidget {
  final String images;
  final String restauranName;
  final String productName;
  final double price;
  Fruits(
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
            width: 190,
            height: 190,
            child: Expanded(
                child: GestureDetector(
              child: Image.asset('$images'),
              onTap: () {},
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

class Product extends StatelessWidget {
  final String productType;
  //final String
  Product({required this.productType});
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
          padding: EdgeInsets.all(05),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 05,
                ),
                Text(
                  "$productType",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    //SizedBox(width: 05,),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Fruits(
                        images: "images/peyara.jpg",
                        restauranName: "Omuker Dokan",
                        productName: "Peyara",
                        price: 50),
                    // SizedBox(
                    //   width: 05,
                    // ),
                    Fruits(
                        images: "images/fruits.jpg",
                        restauranName: "Tomuker Dokan",
                        productName: "Mixed",
                        price: 250),
                  ],
                ),
                SizedBox(
                  height: 05,
                ),
              ],
            ),
          ),
        ));
  }
}
