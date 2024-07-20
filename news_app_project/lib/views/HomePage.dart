import 'package:flutter/material.dart';

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
    body: ListView(
      
      children: [
        Row(
          children: [
            Card(
              img: 'assets/business.avif',
              txt: 'Bussiness'
            ),


          ],
        )
          
      ],

    ),
    );
  }
}
class Card extends StatelessWidget {
  const Card({super.key , this.img , this.txt});
 final String ?  img ; 
 final String ? txt ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      //color: Colors.black,
      child: Stack(
        children: [
          Image.asset(img!),
          Center(
            child: Text( txt!,
            style: TextStyle(
              color: Colors.white ,
              fontSize: 20,
            ),
            ),
          ),
        ],
      ),
    );
  }
}