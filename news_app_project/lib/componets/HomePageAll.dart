import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_project/Services/NewsService.dart';
import '../models/card.dart';
import 'cardCategory.dart';
import 'news_list.dart';
import '../models/ArticlesClass.dart';

class HomePageAll extends StatefulWidget {
  const HomePageAll({
    super.key,
    required this.catList,
  });
  final List<card> catList;

  @override
  State<HomePageAll> createState() => _HomePageAllState();
}

class _HomePageAllState extends State<HomePageAll> {
  List<ArticlesModel> dataList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetGenralNews();
  }

  Future<void> GetGenralNews() async {
    dataList = await NewsServices(Dio()).getGenralNews();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.catList.length,
                itemBuilder: (context, cnt) {
                  return CardCategory(obj: widget.catList[cnt]);
                }),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return NewsList(articalData: dataList[index]);
          }, childCount: dataList.length),
        ),
      ],
    );
  }
}
