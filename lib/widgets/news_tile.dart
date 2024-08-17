import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsTileWidget extends StatelessWidget {
  const NewsTileWidget({super.key, required this.news});

  final ArticleModel news;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(Uri.encodeFull(news.url));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: news.artImg != null
                  ? Image.network(
                      news.artImg!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : const Image(
                      image: AssetImage("assets/Images/download (1).png"))),
          const SizedBox(
            height: 12,
          ),
          Text(
            news.artTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            news.artDesc ?? "",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 18,
              //fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
