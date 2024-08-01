import 'package:flutter/material.dart';
import 'package:news_app_project/componets/cardCategory.dart';
import 'package:news_app_project/componets/news_list.dart';
import 'package:news_app_project/models/card.dart';
import '../componets/HomePageAll.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<card> catList = const [
    card(
      img: 'assets/business.avif',
      txt: 'Business',
    ),
    card(
      img: 'assets/entertaiment.avif',
      txt: 'Entertainment',
    ),
    card(
      img: 'assets/general.avif',
      txt: 'Genral',
    ),
    card(
      img: 'assets/health.avif',
      txt: 'Health',
    ),
    card(
      img: 'assets/science.avif',
      txt: 'Science',
    ),
    card(
      img: 'assets/sports.avif',
      txt: 'Sports',
    ),
    card(
      img: 'assets/technology.jpeg',
      txt: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
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
      body: HomePageAll(catList: catList),
    );
  }
}
