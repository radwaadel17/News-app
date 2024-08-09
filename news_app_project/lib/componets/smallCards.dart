// ignore: file_names
import 'package:flutter/material.dart';
import 'package:news_app_project/models/card.dart';
import 'package:news_app_project/views/newpage.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key , required this.obj});
  final card obj ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return smallcardsresponse(txt: obj.txt);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Container(
          height: 85,
          width: 160,
          //color: Colors.black,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(obj.img), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(
              obj.txt,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
