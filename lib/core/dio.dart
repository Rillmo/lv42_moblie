import 'package:dio/dio.dart';

class DioClient {
  static final DioClient _instance = DioClient._init();
  static DioClient get instance => _instance;

  late final Dio dio;

  DioClient._init() {
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://api.level42.kr',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          sendTimeout: const Duration(seconds: 10),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        )
    );
  }
}
