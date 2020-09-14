import 'package:flutter/material.dart';
import 'package:restapp/categories.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffac41),
      appBar: AppBar(
        backgroundColor: Color(0xffffac41),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30.0,
            ),
            onPressed: () {}),
        title: Text(
          'Order',
          style: TextStyle(
            color: Color(0xff393e46),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 30.0,
              ),
              onPressed: () {})
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Categories(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
