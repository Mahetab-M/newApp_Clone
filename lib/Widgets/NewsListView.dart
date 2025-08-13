import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp_clone/Models/ArticleModel.dart';
import 'package:newsapp_clone/Services/newService.dart';

import '../Models/NewsModel.dart';
import '../components/news_tile.dart';

class NewsListView extends StatefulWidget {
   NewsListView({Key? key}) : super(key: key);

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  // final List<newsModel> newsList = [
  //   newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader1", newsSubtitle: "newsSubtitle"),
  //   newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader2", newsSubtitle: "newsSubtitle"),
  //   newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader3", newsSubtitle: "newsSubtitle"),
  //   newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader4", newsSubtitle: "newsSubtitle"),
  //   newsModel(newsImage: "Assets/Images/business.webp", newsHeader: "newsHeader4", newsSubtitle: "newsSubtitle"),
  // ];
  List<ArticleModel> newsList = [] ;
  @override
  //msh hynf3 a7ot hena async w await 3shan dy overriden method
  //3shan keda b3ml ll method extract w a7ot feha asyn w await bra7ty
  //w b3deen anadeha gahzaa
  void initState() {
    // TODO: implement initState
    super.initState();
    getGeneralNews();
  }
  // void initState() async {
  //   // TODO: implement initState
  //   super.initState();
  //   await getGeneralNews();
  // }

  Future<void> getGeneralNews() async {
    final fetchedNews = await NewsService(Dio()).getNews();
    setState(() {
      newsList = fetchedNews;
    });
  }

  @override
  Widget build(BuildContext context) {

    //NewsService(Dio()).getNews();
    return SliverList(delegate: SliverChildBuilderDelegate(
      childCount: newsList.length,
        (context, index) {
        return Padding(padding: EdgeInsets.only(top: 22),
        child: newsTiles(articleModel: newsList[index]), );
        }
    ));
    // ListView.builder(
    //     shrinkWrap: true,
    //     physics: NeverScrollableScrollPhysics(),
    //     itemCount: newsList.length,
    //     itemBuilder: (context,index){
    //       return newsTiles(news: newsList[index]);
    //     });
  }
}
