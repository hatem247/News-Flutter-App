import 'package:flutter/material.dart';
import 'package:news/Models/NewsClass.dart';
import 'package:news/Services/NewsService.dart';

class NewsProvider extends ChangeNotifier {
  final _newsService = NewsService();
  List<NewsArticle> newsArticles = [];
  bool isLoading = false;

  Future<void> fetchNews() async {
    isLoading = true;
    notifyListeners();

    try {
      newsArticles = await _newsService.fetchNews();
    } catch (e) {
      rethrow;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}