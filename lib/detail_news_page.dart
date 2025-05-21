import 'package:flutter/material.dart';
import 'package:news_app/response_articles.dart';

class DetailNewsPage extends StatelessWidget {
  final Article article;
  const DetailNewsPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16), 
        children: [
          Image.network(article.urlToImage),
          const SizedBox(height: 16),
          Text(
            article.description,
            style: const TextStyle(
              fontSize: 18, 
              height: 1.5,   
            ),
          ),
        ],
      ),
    );
  }
}
