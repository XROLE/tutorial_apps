import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_apps/news-landing-page/view-models/news-article-list-model.dart';

import '3DAnimation/index.dart';
import 'data/check_connectivity.dart';
import 'news-landing-page/ui/new-page/news-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Completer completer = new Completer();

    Future<bool> isInternet = CustomCheckConnectivity.hashInternet();

    completer.complete(isInternet);
    print('===============> Completer result $isInternet');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
          providers: [ChangeNotifierProvider(create: (_) => NewsArticleListViewModel())],
          child: AnimationHome()),
    );
  }
}
