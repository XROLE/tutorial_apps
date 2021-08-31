import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_apps/news-landing-page/view-models/news-article-list-model.dart';

import 'news-landing-page/ui/new-page/news-page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NewsArticleListViewModel())
        ],
        child: NewsPage()),
    );
  }
}

