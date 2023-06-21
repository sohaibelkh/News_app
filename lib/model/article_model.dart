// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:news_app/model/source_model.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> jsonData) {
    return Article(
      source: Source.fromJson(jsonData['source']['id']),
      author: jsonData['authojsonData'],
      title: jsonData['title'],
      description: jsonData['description'],
      url: jsonData['url'],
      urlToImage: jsonData['urlToImage'],
      publishedAt: jsonData['publishedAt'],
      content: jsonData['content'],
    );
  }

  @override
  String toString() {
    return 'source = $source  author = $author  title =$title description = $description  url = $url  urlToImage = $urlToImage  publishedAt = $publishedAt  content =$content';
  }
}
