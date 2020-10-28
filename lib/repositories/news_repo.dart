import 'dart:collection';

import 'package:news_app/models/news_model.dart';

import '../network_module/api_path.dart';
import '../network_module/http_client.dart';

class NewsRepository {
  Future<NewsModel> fetchNews() async {
    Map<String, String> params = new HashMap();
    //params.putIfAbsent("id", () => getCurrentAlbumId.toString());
    Map<String, String> headers = {
      'api-key':'cc0eddbc-e726-4642-a4b9-7691925b7706'
    };
    final response = await HttpClient.instance.fetchDataAndCache(
        APIPathHelper.getValue(APIPath.fetch_news),
        params: null, headers: headers);

    print("ResponseFromRepository - $response");
    return NewsModel.fromJson(response);
  }

  // Future<NewsModel> fetchListOfNews() async {
  //   final response = await HttpClient.instance
  //       .fetchDataAndCache(APIPathHelper.getValue(APIPath.fetch_news));
  //   print("Response - $response");
  //   return NewsModel.fromJson(response);
  // }
}
