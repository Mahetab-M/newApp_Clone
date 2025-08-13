import 'package:flutter/material.dart';
import 'package:newsapp_clone/Models/ArticleModel.dart';
import 'package:newsapp_clone/Models/NewsModel.dart';
class newsTiles extends StatelessWidget {
  const newsTiles({super.key,required this.articleModel});
   //final newsModel news ;
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          height: 200,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(articleModel.Image ??'https://via.placeholder.com/150', fit: BoxFit.fill)
            // Image.asset(articleModel.Image, fit: BoxFit.fill,),
          ),
        ),
        Text(articleModel.Title ?? "No title",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black)),
        Text(articleModel.subTitle ?? "No Description", style: TextStyle(fontSize: 18, color: Colors.grey),),
      ],
    );
  }
}
