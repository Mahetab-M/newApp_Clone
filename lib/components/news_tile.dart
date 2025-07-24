import 'package:flutter/material.dart';
import 'package:newsapp_clone/Models/NewsModel.dart';
class newsTiles extends StatelessWidget {
  const newsTiles({super.key,required this.news});
   final newsModel news ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          height: 200,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(news.newsImage, fit: BoxFit.fill,),
          ),
        ),
        Text(news.newsHeader,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black)),
        Text(news.newsSubtitle, style: TextStyle(fontSize: 18, color: Colors.grey),),
      ],
    );
  }
}
