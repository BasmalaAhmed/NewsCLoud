// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class NewsTileWidget extends StatelessWidget {
  
   const NewsTileWidget({
    super.key,
    required this.news
  });

  final ArticleModel news;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:  Image.network(
              news.art_img,
              height:200,
              width: double.infinity,
              fit: BoxFit.cover,),),
        const SizedBox(
          height: 12,
        ),
          Text(
          news.art_title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(
          height: 8,
        ),
          Text(
          news.art_desc,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(
            color: Color.fromARGB(255, 110, 110, 110),
            fontSize: 14,
            //fontWeight: FontWeight.bold
          ),)
      ],
    );
  }
}