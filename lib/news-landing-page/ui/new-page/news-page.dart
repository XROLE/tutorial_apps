import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_apps/news-landing-page/view-models/news-article-list-model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    Provider.of<NewsArticleListViewModel>(context, listen: false).topHeadLines();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var listViewModel = Provider.of<NewsArticleListViewModel>(context);
    print('I am a chosen one ===============> ${listViewModel.loadingStatus}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Golden News Page'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('Welcome to Golden news page'),
        ),
      ),
    );
  }
}
