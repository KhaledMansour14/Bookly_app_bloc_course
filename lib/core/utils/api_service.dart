import 'package:dio/dio.dart';

class ApiService {
  ApiService({required Dio dio}) : _dio = dio;
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  Future<Map<String, dynamic>> get({required String urlEndPoint}) async {
    var response = await _dio.get('$_baseUrl$urlEndPoint');

    return response.data;
  }
}
