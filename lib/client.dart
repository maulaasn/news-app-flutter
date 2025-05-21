import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/response_articles.dart';

class Client {
  static Future<List<Article>> fetchArticles() async {
    const url =
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=386581e110a3423f8b4dcf41cbb03820'; 
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server did return 200 OK response
      // then parse the JSON
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      ResponseArticles responseArticles = ResponseArticles.fromJson(
        responseBody,
      );
      return responseArticles.articles;
    } else {
      // If the server did not return a 200 OK response
      // then throw an exception
      throw Exception('Failed to load article');
    }
  }
}
