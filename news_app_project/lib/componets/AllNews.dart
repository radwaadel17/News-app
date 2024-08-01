// ignore: file_names
import 'package:flutter/material.dart';

import '../models/ArticlesClass.dart';
import 'news_list.dart';

class AllNews extends StatelessWidget {
  const AllNews({
    super.key,
    required this.dataList,
  });

  final List<ArticlesModel> dataList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return NewsList(articalData: dataList[index]);
      }, childCount: dataList.length),
    );
  }
}
