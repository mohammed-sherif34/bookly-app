import 'package:dio/dio.dart';

class Api {
  static const String paseurl = 'https://www.googleapis.com/books/v1';
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await Dio().get('$paseurl$endPoint');
    // print(response.data);
    return response.data;
  }
}
