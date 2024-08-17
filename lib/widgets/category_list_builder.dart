import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class CategoryListBuilder extends StatefulWidget {
  const CategoryListBuilder({
    super.key,
    required this.category,
  });

  final String category;
  @override
  State<CategoryListBuilder> createState() => _CategoryListBuilderState();
}

class _CategoryListBuilderState extends State<CategoryListBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 200),
                  child: Text(
                    "Oops! There was an error! \n      Please try again later",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Lalezar",
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 250),
                        child: CircularProgressIndicator())));
          }
        });
  }
}
