import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key, this.img, this.txt});
  final String? img;
  final String? txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: 160,
      //color: Colors.black,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(img!), fit: BoxFit.fill),
      ),
      child: Center(
        child: Text(
          txt!,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
