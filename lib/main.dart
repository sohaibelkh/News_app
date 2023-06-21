import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

