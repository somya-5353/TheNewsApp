import 'package:chopper/chopper.dart';
import 'package:news_app/converters/news_model_converter.dart';
import 'package:news_app/models/news_model.dart';

import 'header_interceptor.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {

  @Get(path: '/search')

  Future<Response<NewsModel>> getNews();

  static ApiService create() {
    final client = ChopperClient(
       baseUrl:  'https://content.guardianapis.com/',
       converter: NewsModelConverter(),
       errorConverter: JsonConverter(),
       interceptors: [HeaderInterceptor(), HttpLoggingInterceptor()],
      services: [
        _$ApiService(),
        ],
    );
    return _$ApiService(client);
  }
}