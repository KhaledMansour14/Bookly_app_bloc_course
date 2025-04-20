import 'package:dio/dio.dart';

class ApiService {
  ApiService({required this.dio});
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  Future<Map<String, dynamic>> get({required String urlEndPoint}) async {
    var response = await dio.get('$_baseUrl$urlEndPoint');

    return response.data;
  }
}
