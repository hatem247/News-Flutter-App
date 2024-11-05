import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news/Providers/NewsProvider.dart';
import 'package:news/Widgets/NewsCard.dart';
import 'package:news/Screens/ArticleScreen.dart';
import 'package:news/Models/NewsClass.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TechCrunch News'),
      ),
      body: ChangeNotifierProvider(
        create: (_) => NewsProvider()..fetchNews(),
        child: Consumer<NewsProvider>(
          builder: (context, newsProvider, child) {
            if (newsProvider.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            final articles = newsProvider.newsArticles;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return NewsCard(
                  article: article,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticleScreen(article: article),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}