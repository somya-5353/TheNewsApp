import 'package:chopper/chopper.dart';
import 'package:news_app/models/news_model.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {

  @Get(path: 'search')

  Future<Response<NewsModel>> getNews();

  static ApiService create() {
    final client = ChopperClient(
       baseUrl:  'https://content.guardianapis.com/',
      services: [
        _$ApiService(),
        ],
    );
    return _$ApiService(client);
  }
}