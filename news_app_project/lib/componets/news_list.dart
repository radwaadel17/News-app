import 'package:flutter/material.dart';

import '../models/ArticlesClass.dart';

// ignore: must_be_immutable
class NewsList extends StatelessWidget {
  NewsList({super.key, required this.articalData});
  ArticlesModel articalData;
  bool isArabicFont(String text) {
  // Define the Unicode ranges for Arabic characters
  final arabicPattern = RegExp(r'[\u0600-\u06FF\u0750-\u077F\uFB70-\uFCFF\uFE70-\uFEFF]');
  
  // Define the Unicode ranges for English characters
  final englishPattern = RegExp(r'[A-Za-z]');

  // Check if the text contains Arabic characters
  bool containsArabic = arabicPattern.hasMatch(text);
  
  // Check if the text contains English characters
  bool containsEnglish = englishPattern.hasMatch(text);

  // Determine if the font is Arabic or English based on the presence of characters
  if (containsArabic && !containsEnglish) {
    return true; // Arabic
  } else if (containsEnglish && !containsArabic) {
    return false; // English
  }

  // If text contains both or neither, return false by default or handle as needed
  return false; 
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                articalData.img!,
                height: 250,
                width: 400,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              textDirection: TextDirection.rtl,
              articalData.title ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'NotoSansArabic',
                fontSize: 25,
              ),
            ),
          ),
          Text(
            textDirection:  TextDirection.rtl,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articalData.subTitle ?? '',
            style: const TextStyle(
              fontFamily: 'NotoSansArabic',
              fontSize: 19,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
