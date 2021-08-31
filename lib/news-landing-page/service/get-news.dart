import 'package:dio/dio.dart';
import 'package:tutorial_apps/news-landing-page/news-page/model/news-article.dart';

class GetNews {
  var dio = new Dio();

  Future<List<Articles>> fetchTopHeadlines() async {
    String url =
        'https://newsapi.org/v2/everything?q=tesla&from=2021-07-30&sortBy=publishedAt&apiKey=0486108bebef437eb205c1a299a9d393';

    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final result = response.data;

      Iterable list = result['articles'];
      return list.map((article) => Articles.fromJson(article)).toList();
    } else {
      throw Exception('Failed to fetch news');
    }
  }
}
