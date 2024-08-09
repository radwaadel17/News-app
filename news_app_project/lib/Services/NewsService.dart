// ignore: file_names
import 'package:dio/dio.dart';
import 'package:news_app_project/models/ArticlesClass.dart';

class NewsServices {
  final Dio dio;
  const NewsServices(this.dio);
  final String apiKey = 'pub_50503eb74fcac9f5261c69d913f3d1b2fa1f5';
  Future<List<ArticlesModel>> getGenralNews(String newsType) async {
    
    try {
      Response response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=$apiKey&country=eg&image=1&language=ar&category=$newsType');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];
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
    articlesList.add(ArticlesModel.fromjson(articles[i]));
  }
  return articlesList;
}
