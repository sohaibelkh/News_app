import 'dart:convert';

import 'package:news_app/model/article_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final endPointUrl =
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=25098707fabd4cb5b5f9b515650eb10a';

  Future<List<Article>> getArticle() async {
  http.Response res = await http.get(Uri.parse(endPointUrl));

  if (res.statusCode == 200) {
    Map<String, dynamic> json = jsonDecode(res.body);

    // print(json);

    List<dynamic> articlesData = json['articles'];

    List<Article> articles = articlesData.map((item) {
      return Article.fromJson(item);
    }).toList();

    return articles;
  } else {
    throw Exception("Can't get the articles");
  }
}

}
