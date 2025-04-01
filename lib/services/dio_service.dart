import 'package:dio/dio.dart';

class DioService {
  static final Dio _dio = Dio();



  static void init() {
    _dio.options.baseUrl = 'https://dummyjson.com/auth';
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 3);
  }

  static Future<Response> post(
      String endpoint, Map<String, dynamic> data) async {
    try {
      return await _dio.post(endpoint, data: data);
    } catch (e) {
      throw Exception('Failed to post data: $e');
    }
  }

  static Future<Response> get(String endpoint) async {
    try {
      return await _dio.get(endpoint);
    } catch (e) {
      throw Exception('Failed to get data: $e');
    }
  }
}
