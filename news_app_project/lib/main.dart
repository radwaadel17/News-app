import 'package:flutter/material.dart';
import 'package:news_app_project/views/firstScreen.dart';

void main(){

}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}