import 'package:flutter/material.dart';
import 'package:news_app_project/componets/cardCategory.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation:  0,
       backgroundColor: Colors.transparent,
       title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('News',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26 ,
            ),
            
          ),
          Text(
            'Cloud' ,
            style: TextStyle(
              color:Colors.orange ,
              fontSize: 26 ,
            ),
          ),
        ],
       ),
    ),
    body: CardCategory(
      img: 'assets/business.avif',
      txt: 'Business',
    ),
    );
}
}
