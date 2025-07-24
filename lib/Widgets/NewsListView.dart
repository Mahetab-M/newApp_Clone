import 'package:flutter/material.dart';

import '../Models/NewsModel.dart';
import '../components/news_tile.dart';

class NewsListView extends StatelessWidget {
   NewsListView({Key? key}) : super(key: key);
  final List<newsModel> newsList = [
    newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader1", newsSubtitle: "newsSubtitle"),
    newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader2", newsSubtitle: "newsSubtitle"),
    newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader3", newsSubtitle: "newsSubtitle"),
    newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader4", newsSubtitle: "newsSubtitle"),
    newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader4", newsSubtitle: "newsSubtitle"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: newsList.length,
        itemBuilder: (context,index){
          return newsTiles(news: newsList[index]);
        });
  }
}
