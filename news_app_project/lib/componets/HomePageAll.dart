import 'package:flutter/material.dart';

import '../models/card.dart';
import 'cardCategory.dart';
import 'news_list.dart';

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
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return NewsList();
          }, childCount: 10),
        ),
      ],
    );
  }
}
