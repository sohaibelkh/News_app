import 'package:flutter/material.dart';

import '../model/article_model.dart';
import '../services/api_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News App',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data!;
            print(articles);
            return Center(
              child: Text('Success!'),
            );
          } else {
            return Text('no data');
          }
        },
      ),
    );
  }
}
