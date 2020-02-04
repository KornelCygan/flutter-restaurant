import 'package:flutter/material.dart';
import 'package:restaurant_app/shared/custom.style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: cAppThemeData,
      title: cAppTitle,
      debugShowCheckedModeBanner: false,
      home: FoodHome(),
    );
  }
}

class FoodHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text('Hello World') ,
    //   );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(cAppTitle),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white, size: 30.0),
              tooltip: 'Shop',
              onPressed: () {
                Navigator.pushNamed(context, '/shopcart');
            }),
            IconButton(
              icon: Icon(Icons.restaurant_menu, color: Colors.white, size: 30.0),
              tooltip: 'Menu',
              onPressed: () {
                Navigator.pushNamed(context, '/orders');
            }),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white, size: 30.0),
              tooltip: 'Setup',
              onPressed: () {
                Navigator.pushNamed(context, '/setmenu');
            })
          ],
        ) ,
      );
  }
}