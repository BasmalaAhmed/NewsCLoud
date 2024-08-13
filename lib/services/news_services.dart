import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  void getGeneralNews() async {
  final dio = Dio();
  Response response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=0181a781f6994d8ba268aa076e30f8df&q=general');
  Map <String,dynamic> jsonData = response.data;

  List <dynamic> articles = jsonData["articles"];
  List <ArticleModel> articlesList = [];

  for (var article in articles) {
    ArticleModel articleModel = ArticleModel(
      art_img: article["urlToImage"],
      art_title: article["title"],
      art_desc: article["description"]);
  }
}

void getBusinessNews() async {
  final dio = Dio();
  final response = await dio.get('https://newsapi.org/v2/everything?q=%22business%22&apiKey=0181a781f6994d8ba268aa076e30f8df');
  print(response.data);
}

void getEntertainmentNews() async {
  final dio = Dio();
  final response = await dio.get('https://newsapi.org/v2/everything?q=%22entertainment%22&apiKey=0181a781f6994d8ba268aa076e30f8df');
  print(response.data);
}

void getHealthNews() async {
  final dio = Dio();
  final response = await dio.get('https://newsapi.org/v2/everything?q=%22health%22&apiKey=0181a781f6994d8ba268aa076e30f8df');
  print(response.data);
}

void getScienceNews() async {
  final dio = Dio();
  final response = await dio.get('https://newsapi.org/v2/everything?q=%22science%22&apiKey=0181a781f6994d8ba268aa076e30f8df');
  print(response.data);
}

void getSportsNews() async {
  final dio = Dio();
  final response = await dio.get('https://newsapi.org/v2/everything?q=%22sports%22&apiKey=0181a781f6994d8ba268aa076e30f8df');
  print(response.data);
}

void getTechnologyNews() async {
  final dio = Dio();
  final response = await dio.get('https://newsapi.org/v2/everything?q=%22technology%22&apiKey=0181a781f6994d8ba268aa076e30f8df');
  print(response.data);
}
}