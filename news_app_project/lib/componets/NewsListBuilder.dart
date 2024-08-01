import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'AllNews.dart';
import '../Services/NewsService.dart';
import '../models/ArticlesClass.dart';

class AllNewsBuilder extends StatefulWidget {
  const AllNewsBuilder({
    super.key,
  });
  @override
  State<AllNewsBuilder> createState() => _AllNewsBuilderState();
}

class _AllNewsBuilderState extends State<AllNewsBuilder> {
  @override
  List<ArticlesModel> DataList = [];
  bool isLoading = true;
  void initState() {
    // TODO: implement initState
    super.initState();
    GetGenralNews();
  }

  Future<void> GetGenralNews() async {
    DataList = await NewsServices(Dio()).getGenralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: isLoading
            ? CircularProgressIndicator()
            : AllNews(dataList: DataList));
  }
}
