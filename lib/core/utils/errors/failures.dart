import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServierFailure extends Failure {
  ServierFailure({required super.errMessage});
  factory ServierFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServierFailure(
            errMessage: 'connectionTimeout,Pleasetry again later');
      case DioExceptionType.sendTimeout:
        return ServierFailure(errMessage: 'sendTimeout,Pleasetry again later');
      case DioExceptionType.receiveTimeout:
        return ServierFailure(
            errMessage: 'receiveTimeout,Pleasetry again later');
      case DioExceptionType.badCertificate:
        return ServierFailure(
            errMessage: 'oops there is an Error,Please try again later');
      case DioExceptionType.badResponse:
        ServierFailure.fromResponse(error);
      case DioExceptionType.cancel:
        return ServierFailure(errMessage: 'Request canceled,Pleasetry again ');
      case DioExceptionType.connectionError:
        return ServierFailure(
            errMessage: 'connectionError,Pleasetry again later');
      case DioExceptionType.unknown:
        if (error.message!.contains('SocketException')) {
          return ServierFailure(errMessage: 'NoInternet Connection');
        }
    }
    return ServierFailure(
        errMessage: 'oops there is an Error,Please try again later');
  }
  factory ServierFailure.fromResponse(error) {
    if (error.response!.statusCode == 403) {
      return ServierFailure(
          errMessage: 'You do not have permission to access this resource');
    } else if (error.response!.statusCode == 400) {
      return ServierFailure(
          errMessage: 'The request was invalid or malformed.');
    } else if (error.response!.statusCode == 401) {
      return ServierFailure(
          errMessage:
              'You need to provide valid credentials to access this resource. Please login or register ');
    } else if (error.response!.statusCode == 404) {
      return ServierFailure(
          errMessage: 'The resource you requested was not found');
    } else if (error.response!.statusCode == 500) {
      return ServierFailure(
          errMessage:
              'The server encountered an unexpected error, Please try again later or report the issue');
    }
    return ServierFailure(
        errMessage: 'oops there is an Error,Please try again later');
  }
}
