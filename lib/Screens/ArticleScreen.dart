import 'package:flutter/material.dart';
import 'package:news/Models/NewsClass.dart';
import 'package:news/Widgets/ArticleDetails.dart';

class ArticleScreen extends StatelessWidget {
  final NewsArticle article;

  const ArticleScreen({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article'),
      ),
      body: ArticleDetails(article: article),
    );
  }
}
