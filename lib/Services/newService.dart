import "package:dio/dio.dart" ;
import "package:newsapp_clone/Models/ArticleModel.dart";
import "package:newsapp_clone/Models/NewsModel.dart";

class NewsService{
  Dio dio;
  NewsService(this.dio);

  //Create method that will get the news from API (Method named getNews)
 Future<List<ArticleModel>> getNews() async{
    Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=a5eb4a9ee6a94f969ba544c58bee11a8");
    Map<String,dynamic> jsonData = response.data;
    //b3d ma a5dna el data mn el response fy shakl map
    //hast5dm el key el esmo articles w yrg3ly list of articles
    //List of articles is a list gowaha group of maps
    List<dynamic> articles = jsonData["articles"];

    //3mlt list fadya of type article model leeh?
    //3han a7ot gowaha el data el hagebha mn articles
    //(El heya kol el data y3ny )
    List<ArticleModel> articleList = [];

    for (var article in articles){
      //hena ba2a 3det 3la el list of maps dy b el index (el howa article)
      // w khaleto ya5od menha values mo3yna mn kol list w yshelha fy variable (articleModel)
      ArticleModel articleModel =
      ArticleModel(Image: article["urlToImage"]  ?? 'https://via.placeholder.com/150',
          Title: article["title"] ?? "No Title",
          subTitle: article["description"] ?? "No Description");

      //w b3den el data el metshala fy articleModel dy 7atetha fy list
      //esmha articleList el kont 3amlaha fadya fy el awel
      //f ba2a 3andy List shayla models kol model shayel el data bta3et khabr wa7ed
      articleList.add(articleModel);
    }
    return articleList;
  }

}