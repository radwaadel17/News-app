import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
               padding: const EdgeInsets.all(9.0),
               child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/health.avif')
                ),
             ),
             Padding(
               padding: const EdgeInsets.all(10),
               child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                'Large Title should be placed in this placed Large Title should be placed in this placed',
                style: TextStyle(
                  fontSize: 27 ,
                ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 1 , horizontal: 7),
               child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                'small Title should be placed in this placed small ',
                style: TextStyle(
                  fontSize: 20 ,
                  color: Colors.grey,
                ),
               ),
             ),
            ],
    );
  }
}