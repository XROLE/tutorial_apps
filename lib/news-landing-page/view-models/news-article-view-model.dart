import 'package:tutorial_apps/news-landing-page/news-page/model/news-article.dart';

class NewsArticleViewModel {
  Articles? _articles;

  NewsArticleViewModel({Articles? articles}) :  _articles = articles;

  String? get title {
    return _articles?.title;
  }

  String? get author {
    return _articles?.author;
  }

  String? get description {
    return _articles?.description;
  }

  String? get url {
    return _articles?.url;
  }

  String? get urlToImage {
    return _articles?.urlToImage;
  }

  String? get publishedAt {
    return _articles?.publishedAt;
  }

  String? get content {
    return _articles?.content;
  }
}
