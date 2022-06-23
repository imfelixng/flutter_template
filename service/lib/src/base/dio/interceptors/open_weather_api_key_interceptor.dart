import 'package:dio/dio.dart';
import 'package:foundation/foundation.dart';

class OpenWeatherApiKeyInterceptor extends Interceptor {
  static const String _appId = "appid";

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final newOptions = options.copyWith(queryParameters: {
      ...options.queryParameters,
      _appId: FlavorConfig.instance.values.secrets.openWeatherApiKey,
    });

    handler.next(newOptions);
  }
}