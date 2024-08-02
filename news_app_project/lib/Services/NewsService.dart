// ignore: file_names
import 'package:dio/dio.dart';
import 'package:news_app_project/models/ArticlesClass.dart';

class NewsServices {
  final Dio dio;
  const NewsServices(this.dio);

  Future<List<ArticlesModel>> getGenralNews() async {
    
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=e16edadcc5a34f43bf21fa9999da78e8');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticlesModel> articlesList = getList(articles);
      return articlesList;
      //  print(articlesList);
    } catch (e) {
      return [];
    }
  }
}

List<ArticlesModel> getList(List<dynamic> articles) {
  List<ArticlesModel> articlesList = [];
  for (int i = 0; i < articles.length; i++) {
    articlesList.add(ArticlesModel(
      img: articles[i]['urlToImage'],
      title: articles[i]['title'],
      subTitle: articles[i]['description'],
    ));
  }
  return articlesList;
}
