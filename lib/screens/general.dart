import 'package:flutter/material.dart';
import 'package:news_app/widgets/background.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';


class GeneralPage extends StatelessWidget {
  const GeneralPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffFEEADD),
        iconTheme: const IconThemeData( color: Colors. black,),
        elevation: 0,
        title: const Row(

                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "News",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontFamily: "Lalezar"
                        ),
                        ),
                        Text(
                        "Cloud",
                        style: TextStyle(
                          color: Color(0xffF78232),
                          fontSize: 32,
                          fontFamily: "Lalezar"
                        ),
                        ),
                    ],
                                 ),
      ),
        body: const Stack(
          children: [
            BackGroundWidget(),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 16),
               child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(child: CategoriesListView(),),
                  SliverToBoxAdapter(child: SizedBox(height: 32),),
                  NewsListView()
                ],
               ),
              //  child: Column(
              //   children: [
              //     CategoriesListView(),
              //     SizedBox(height: 32),
              //  Expanded(child: NewsListView()),
              //   ],
              //  ),
             )
          ],
        ),
        );
  }
}

