import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/screens/business.dart';
import 'package:news_app/screens/entertainment.dart';
import 'package:news_app/screens/general.dart';
import 'package:news_app/screens/health.dart';
import 'package:news_app/screens/science.dart';
import 'package:news_app/screens/sports.dart';
import 'package:news_app/screens/technology.dart';
import 'package:news_app/widgets/cards.dart';


class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoriesModel> categories = const [
    CategoriesModel(img: "assets/Images/images (1).jpeg", name: "Business", page: BusinessPage()),
    CategoriesModel(img: "assets/Images/entertaiment.avif", name: "Entertainment", page: EntertainmentPage()),
    CategoriesModel(img: "assets/Images/technology.jpeg", name: "Technology", page: TechnologyPage()),
    CategoriesModel(img: "assets/Images/health.avif", name: "Health", page: HealthPage()),
    CategoriesModel(img: "assets/Images/desktop-wallpaper-computer-science-black-science.jpg", name: "Science", page: SciencePage()),
    CategoriesModel(img: "assets/Images/science.avif", name: "Sports", page: SportsPage()),
    CategoriesModel(img: "assets/Images/images (2).jpeg", name: "General", page: GeneralPage()),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 120,
     
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
                           scrollDirection: Axis.horizontal,
                           itemCount: categories.length,
                           itemBuilder: (context , index)
                           {
                             return CardWidget(
                              category: categories[index],
                             );
                           }),
    );}}