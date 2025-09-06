import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final apiKey = dotenv.env['API_KEY'];

    if (apiKey == null) {
      final error = DioException(
        requestOptions: options,
        message: 'API_KEY não encontrada no arquivo .env',
      );
      return handler.reject(error);
    }

    options.queryParameters['api_key'] = apiKey;

    options.queryParameters['language'] = 'pt-BR';

    return handler.next(options);
  }
}
