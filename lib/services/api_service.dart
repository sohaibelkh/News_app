import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/article_model.dart';

class ApiService {
  final endPointUrl =
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=25098707fabd4cb5b5f9b515650eb10a';

  Future<List<Article>> getArticle() async {
    http.Response res = await http.get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      final List<dynamic> articlesData = json['articles'] as List<dynamic>;

      List<Article> articles = [];
      for (Map<String, dynamic> item in articlesData) {
        articles.add(Article.fromJson(item));
      }
      return articles;
    } else {
      throw Exception("Can't get the articles");
    }
  }
}
