import 'package:dio/dio.dart';

class Api {
  static const String url =
      'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=subject:programming';
   Future<Map<String, dynamic>> get() async {
    final response = await Dio().get(url);
   // print(response.data);
    return response.data;
  }
}
