import 'package:flutter/material.dart';
import 'package:news_app_project/Services/NewsService.dart';
import 'package:news_app_project/views/HomePage.dart';
import 'package:dio/dio.dart';


void main(){
  NewsServices(Dio()).getGenralNews();
  runApp(NewsApp());
}
final dio = Dio();



class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: HomePage(
      ),
    );
  }
}