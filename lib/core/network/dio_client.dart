import 'package:dio/dio.dart';

import 'api_interceptor.dart';

const String _baseUrl = 'https://api.themoviedb.org/3';

Dio createDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  dio.interceptors.add(ApiInterceptor());

  dio.interceptors.add(
    LogInterceptor(requestBody: true, responseBody: true, requestHeader: true),
  );

  return dio;
}
