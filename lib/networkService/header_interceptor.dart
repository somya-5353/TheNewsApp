import 'dart:async';
import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {

  static const String AUTH_HEADER = 'api-key';
  static const String  V4_AUTH_HEADER = '9baadf70-955d-48fa-b47f-66037d9ed061';


  @override
  FutureOr<Request> onRequest(Request request) async {

    Request newRequest = request.copyWith(headers: {AUTH_HEADER: V4_AUTH_HEADER});
    return newRequest;

  }
}