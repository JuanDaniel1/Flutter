import 'package:flutter/material.dart';

class ImagesRow extends StatelessWidget {
  final images = [
    {'image':'images/pic0.jpg', 'title':'image 1'},
    {'image':'images/pic1.jpg', 'title':'image 2'},
    {'image':'images/pic2.jpg', 'title':'image 3'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (_,i)=>Row(
          children: [
            Image.asset(
              images[i]['image'],
              width: 200,),
            Text(images[i]['title'])
          ],
        ),
      ),
    );
  }
}