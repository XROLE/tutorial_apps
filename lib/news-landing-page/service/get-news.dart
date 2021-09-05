import 'package:dio/dio.dart';
import 'package:tutorial_apps/data/http_client.dart';
import 'package:tutorial_apps/news-landing-page/news-page/model/news-article.dart';

class GetNews {
  var dio =  HttpClient.getClient();

  Future<List<Articles>> fetchTopHeadlines() async {
    String url = 'http://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1';

    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final result = response.data;

        print('Result ============> $response');

      } else {
        print('Something went wrong =============================>');
        throw Exception('Failed to fetch news');
      }
    } catch (e) {
      print('There was an error ==============> $e');
    }
    return [];
  }
}
