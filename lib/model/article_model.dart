// ignore_for_file: public_member_api_docs, sort_constructors_first
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

  factory Article.fromJson(Map<String, dynamic> article) {
    final Map<String, dynamic> articleSource =
        article['source'] as Map<String, dynamic>;
    return Article(
      source: Source.fromJson(articleSource),
      author: article['author'].toString(),
      title: article['title'].toString(),
      description: article['description'].toString(),
      url: article['url'].toString(),
      urlToImage: article['urlToImage'].toString(),
      publishedAt: article['publishedAt'].toString(),
      content: article['content'].toString(),
    );
  }

  @override
  String toString() {
    return 'source = $source  author = $author  title =$title description = $description  url = $url  urlToImage = $urlToImage  publishedAt = $publishedAt  content =$content';
  }
}
