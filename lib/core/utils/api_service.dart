import 'package:dio/dio.dart';

class ApiService {
 final Dio dio;
  static const String paseurl = 'https://www.googleapis.com/books/v1';

  ApiService({required this.dio});
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await dio.get('$paseurl$endPoint');
    // print(response.data);
    return response.data;
  }
}

