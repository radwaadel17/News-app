import 'package:flutter/material.dart';
import 'package:news_app_project/componets/AllNews.dart';
import 'package:news_app_project/componets/CustomBuilder.dart';
import 'package:news_app_project/componets/news_list.dart';

import '../componets/NewsListBuilder.dart';

class smallcardsresponse extends StatelessWidget {
  smallcardsresponse({super.key, required this.txt});
  final String txt ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(right: 54),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
      ),      
        body:  CustomScrollView(
          slivers: [
            customBuilder(type: txt),
          ],
        )
    );
  }
}