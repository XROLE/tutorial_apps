import 'package:tutorial_apps/data/http_client.dart';
import 'package:tutorial_apps/news-landing-page/news-page/model/news-article.dart';

class GetNews {
  var dio = HttpClient.getClient();

  Future<List<Articles>> fetchTopHeadlines() async {
    String url = 'http://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1';

    try {
      await dio.get(url);
    } catch (e) {
      // print('this is the error cought from =================== $e');
    }
    return [];
  }
}
