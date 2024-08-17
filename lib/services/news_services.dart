import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getTopHeadlines() async {
    final dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=0181a781f6994d8ba268aa076e30f8df');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            artImg: article["urlToImage"],
            artTitle: article["title"],
            artDesc: article["description"],
            url: article["url"]);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }

  Future<List<ArticleModel>> getNews({required String category}) async {
    final dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=$category&apiKey=0181a781f6994d8ba268aa076e30f8df&language=en');
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            artImg: article["urlToImage"],
            artTitle: article["title"],
            artDesc: article["description"],
            url: article["url"]);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
