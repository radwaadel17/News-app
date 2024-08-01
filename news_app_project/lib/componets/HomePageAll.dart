import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_project/Services/NewsService.dart';
import '../models/card.dart';
import 'AllNews.dart';
import 'NewsListBuilder.dart';
import 'cardCategory.dart';
import 'news_list.dart';
import '../models/ArticlesClass.dart';

class HomePageAll extends StatelessWidget {
  const HomePageAll({
    super.key,
    required this.catList,
  });
  final List<card> catList;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catList.length,
                itemBuilder: (context, cnt) {
                  return CardCategory(obj: catList[cnt]);
                }),
          ),
        ),
        AllNewsBuilder(),
      ],
    );
  }
}
