import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.category,
  });

  final CategoriesModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width:  200,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(category.img),
          fit: BoxFit.fill),
        ),
        child: Center(
         child : ElevatedButton(
                     onPressed: () {
                      Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => category.page,
              ),
            );
                     },
                     style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, shadowColor: Colors.transparent),
                     child: Text(
                      category.name,
                      style: const TextStyle(
                        fontFamily: "Lalezar",
                        fontSize: 22,
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),),
                   ),
        ),
      ),
    );
  }
}