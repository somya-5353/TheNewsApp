import 'dart:async';
import 'package:chopper/chopper.dart';

class HeaderInterceptor implements RequestInterceptor {

  static const String AUTH_HEADER = "Authorization";
  static const String BEARER = "Bearer ";
  static const String V4_AUTH_HEADER = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjYTg3YTYxOGJhNDhhOTkyNzY4N2I5MTJjZjFkOTkwMSIsInN1YiI6IjVmOGYyYWM5MzgzZGYyMDAzNmFhNGJjNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.2fswv_AObsfqfwMeKyHrFnuuoVuvLpDMH1Gls8pnjWg";
  FutureOr<Request> onRequest(Request request) async {
    Request newRequest = request.copyWith(headers: {AUTH_HEADER: BEARER + V4_AUTH_HEADER});
    return newRequest;
  }
}