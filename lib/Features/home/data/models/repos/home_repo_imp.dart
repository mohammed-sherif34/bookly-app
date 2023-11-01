import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/repos/home_repo.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  const HomeRepoImp(this.api);
  final ApiService api;
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await api.get(
          endPoint:
              '/volumes?Filtering=free-ebooks&q=computer Science&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServierFailure.fromDioError(e));
      } else {
        return left(ServierFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await api.get(
          endPoint: '/volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServierFailure.fromDioError(e));
      } else {
        return left(ServierFailure(errMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchAlsoLikeBooks(
      {required category}) async {
    try {
      var data = await api.get(
          endPoint:
              '/volumes?Filtering=free-ebooks&q=$category&sorting=relevance');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServierFailure.fromDioError(e));
      } else {
        return left(ServierFailure(errMessage: e.toString()));
      }
    }
  }
}
