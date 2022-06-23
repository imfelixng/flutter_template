import 'package:dio/dio.dart';
import 'package:foundation/foundation.dart';

Dio provideDio({List<Interceptor> interceptors = const []}) {
  final baseOption = BaseOptions(
    baseUrl: FlavorConfig.instance.values.apiBaseUrl,
  );
  final dio = Dio(baseOption);

  final logInterceptor = LogInterceptor(
    requestBody: true,
    responseBody: true,
  );

  if (FlavorConfig.instance.values.showLogs) {
    dio.interceptors.add(logInterceptor);
  }

  dio.interceptors.addAll(interceptors);

  return dio;
}