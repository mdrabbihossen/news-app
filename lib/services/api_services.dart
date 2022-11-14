// https://newsapi.org/v2/top-headlines/sources?apiKey=25ddb82033624a6392f64234f708cd29
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/views/model/news_model.dart';

class ApiServices {
  static const String url =
      'https://newsapi.org/v2/top-headlines/sources?apiKey=25ddb82033624a6392f64234f708cd29';

  static Future<List<News>> fetchNews() async {
    try {
      final response = await http.get(Uri.parse(url), headers: {
        'Content-Type': 'application/json;charset=UTF-8',
        'Accept': 'application/json',
      });
      if (response.statusCode == 200) {
        final List<News> news = newsFromJson(response.body);
        return news;
      } else {
        return List<News>.empty();
      }
    } catch (e) {
      return List<News>.empty();
    }
  }
}
