import 'package:flutter/material.dart';
import './home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.light().copyWith(
                textTheme: TextTheme(
          bodyText2:  TextStyle(fontSize: 30.0, fontFamily: 'Hind',color: Colors.black)  
        ), 
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage()

    );
  }
}

