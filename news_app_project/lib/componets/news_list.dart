import 'package:flutter/material.dart';

import '../models/ArticlesClass.dart';

class NewsList extends StatelessWidget {
  NewsList({super.key, required this.articalData});
  ArticlesModel articalData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                articalData.img!,
                height: 250,
                width: 400,
                fit: BoxFit.cover,
              )),
          Text(
            articalData.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articalData.subTitle!,
            style: TextStyle(
              fontSize: 19,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
