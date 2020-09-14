import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  final List<String> categories = [
    'Starters',
    'Mains',
    'Naan',
    'Biryani',
    'Extras'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Color(0xffffac41),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Text(
                categories[index],
                style: TextStyle(
                  color:
                      index == selectedIndex ? Colors.white : Color(0xff393e46),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.7,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
