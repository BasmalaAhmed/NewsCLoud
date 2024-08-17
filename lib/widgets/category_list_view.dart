import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(img: "assets/Images/images (1).jpeg", name: "Business"),
    CategoryModel(
        img: "assets/Images/entertaiment.avif", name: "Entertainment"),
    CategoryModel(img: "assets/Images/technology.jpeg", name: "Technology"),
    CategoryModel(img: "assets/Images/health.avif", name: "Health"),
    CategoryModel(
        img:
            "assets/Images/desktop-wallpaper-computer-science-black-science.jpg",
        name: "Science"),
    CategoryModel(img: "assets/Images/science.avif", name: "Sports"),
    CategoryModel(img: "assets/Images/images (2).jpeg", name: "General"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
