import 'package:flutter/material.dart';

class Category {
  String content;
  IconData icon;
  Color backgroundColor;

  Category(
      {required this.content,
      required this.icon,
      required this.backgroundColor});
}

class CategoryUI extends StatelessWidget {
  const CategoryUI({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 245, 242, 247),
      ),
      padding: EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 16),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: category.backgroundColor),
            padding: EdgeInsets.all(7),
            child: Icon(
              category.icon,
              size: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Text(category.content)
        ],
      ),
    );
  }
}
