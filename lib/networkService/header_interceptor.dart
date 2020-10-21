import 'dart:async';
import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {

  static const String AUTH_HEADER = "api-key";
  //static const String BEARER = "Bearer ";
  static const String V4_AUTH_HEADER = "cc0eddbc-e726-4642-a4b9-7691925b7706";
  FutureOr<Request> onRequest(Request request) async {
    Request newRequest = request.copyWith(headers: {AUTH_HEADER: V4_AUTH_HEADER});
    return newRequest;
  }
}