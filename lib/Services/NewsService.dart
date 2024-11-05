import 'package:dio/dio.dart';
import 'package:news/Models/NewsClass.dart';

class NewsService {
  final Dio _dio = Dio();

  Future<List<NewsArticle>> fetchNews() async {
    final response = await _dio.get(
      'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=6d86969858af48459c1b31574211e441',
    );
    if (response.statusCode == 200) {
      List<dynamic> articlesJson = response.data['articles'];
      return articlesJson.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
