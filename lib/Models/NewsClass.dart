class NewsArticle {
  final String title;
  final String? description;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

  NewsArticle({
    required this.title,
    this.description,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
