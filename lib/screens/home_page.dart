import 'package:flutter/material.dart';

import '../model/article_model.dart';
import '../services/api_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Article>> _articleFuture;
  ApiService client = ApiService();

  @override
  void initState() {
    super.initState();
    _articleFuture = client.getArticle();
  }

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
      body: FutureBuilder<List<Article>>(
        future: _articleFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data!;
            print(articles);
            return Center(
              child: Text('Success!'),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
