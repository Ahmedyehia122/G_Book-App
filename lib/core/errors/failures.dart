import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection Timeout with Api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send Timeout with Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive Timeout with Api server');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'badCertificate with Api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            errMessage: 'Your request with Api server was canceled');

      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'No internet connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Unexpexted Error, Please try again later!');

      default:
        return ServerFailure(
            errMessage: 'Oops there was an Error, Please try again later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      // it debends on which api you use(response['error']) , response == josndata
      return ServerFailure(errMessage: response['error']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your request not found, Please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal server Error, Please try again later!');
    } else {
      return ServerFailure(
          errMessage: 'Oops there was an Error, Please try again later!');
    }
  }
}
