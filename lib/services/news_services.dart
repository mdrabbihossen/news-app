import 'package:http/http.dart' as http;
import 'package:news_app/model/news_model.dart';
import 'package:news_app/utils/app_constants.dart';

class NewsServices {
  Future<News> getNews() async {
    try {
      final response = await http.get(Uri.parse(AppConstants.baseUrl));
      if (response.statusCode == 200) {
        final news = newsFromJson(response.body);
        return news;
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      rethrow;
    }
  }
}
