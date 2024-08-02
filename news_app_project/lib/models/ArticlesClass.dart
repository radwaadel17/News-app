class ArticlesModel {
  final String? img;
  final String? title;
  final String? subTitle;
  ArticlesModel(
      {required this.img, required this.title, required this.subTitle});
  factory ArticlesModel.fromjson(json) {
    return ArticlesModel(
        img: json['urlToImage'],
        title: json['title'],
        subTitle: json['description']);
  }
}
