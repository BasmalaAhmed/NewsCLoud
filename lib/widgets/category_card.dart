import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 200,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(category.img), fit: BoxFit.fill),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return CategoryView(category: category.name);
                }),
              );
            },
            child: Text(
              category.name,
              style: const TextStyle(
                  fontFamily: "Lalezar",
                  fontSize: 22,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
    );
  }
}
