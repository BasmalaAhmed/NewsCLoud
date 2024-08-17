import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({
    super.key,
  });

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getTopHeadlines();
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
