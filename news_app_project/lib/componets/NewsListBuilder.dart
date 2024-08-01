// ignore: file_names
// ignore: file_names
// ignore: file_names
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
  // ignore: non_constant_identifier_names
  List<ArticlesModel> DataList = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    GetGenralNews();
  }

  // ignore: non_constant_identifier_names
  Future<void> GetGenralNews() async {
    DataList = await NewsServices(Dio()).getGenralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  isLoading ?
             const SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
            : DataList.isEmpty ? const SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    'Opps there was an error! , please try again later' ,
                    style: TextStyle(
                      color: Colors.black ,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ) : AllNews(dataList: DataList);
  }
}
