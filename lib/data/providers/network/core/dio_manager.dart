import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'api_interceptors.dart';

class DioManager {
  DioManager._();
  static final DioManager getInstance = DioManager._();

  Dio? _dio;
  Dio init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'baseUrlEndpoint',
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60),
        sendTimeout: const Duration(seconds: 60),
        receiveDataWhenStatusError: true,
        validateStatus: (status) {
          return true;
        },
      ),
    );
    _dio?.interceptors.add(ApiInterceptors());
    return _dio!;
  }

  Future<Response> get({
    required String url,
    Map<String, dynamic>? header,
    Map<String, dynamic>? queryParameters,
  }) async {
    Logger().i(
        'dioGet url: $url header: $header queryParameters: $queryParameters}');

    return await _dio!.get(
      url,
      options: Options(headers: header),
      queryParameters: queryParameters,
    );
  }
}
