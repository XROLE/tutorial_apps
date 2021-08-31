import 'package:flutter/material.dart';
import 'package:tutorial_apps/news-landing-page/news-page/model/news-article.dart';
import 'package:tutorial_apps/news-landing-page/service/get-news.dart';

import 'news-article-view-model.dart';

enum LoadingStatus { completed, searching, empty }

class NewsArticleListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<NewsArticleViewModel> articles = <NewsArticleViewModel>[];

  void topHeadLines() async {
    List<Articles> newsArticles = await GetNews().fetchTopHeadlines();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    this.articles = newsArticles.map((article) => NewsArticleViewModel(articles: article)).toList();

    if (this.articles.isEmpty) {
      this.loadingStatus = LoadingStatus.empty;
    } else {
      this.loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
