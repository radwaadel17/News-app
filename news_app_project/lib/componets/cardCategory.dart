import 'package:flutter/material.dart';
import 'package:news_app_project/models/card.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key , required this.obj});
  final card obj ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height: 85,
        width: 160,
        //color: Colors.black,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(obj.img), fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            obj.txt,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
