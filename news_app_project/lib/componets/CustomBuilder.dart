// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'AllNews.dart';
import '../Services/NewsService.dart';
import '../models/ArticlesClass.dart';

class customBuilder extends StatefulWidget {
  final String type;
  const customBuilder({
    super.key,
    required this.type,
  });
  @override
  State<customBuilder> createState() => _customBuilderState();
}

class _customBuilderState extends State<customBuilder> {
  // ignore: non_constant_identifier_names
  var FutureData;
  @override
  void initState() {
    super.initState();
    FutureData = NewsServices(Dio()).getGenralNews(widget.type); // request once
  }
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        // edit type of data
        future: FutureData, // passing data
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return AllNews(dataList: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    'Opps there was an error! , please try again later',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
