import 'package:dio/dio.dart';

class Failuers {
  final String errorMessage;

  Failuers({required this.errorMessage});
}

class ServesFailuer extends Failuers {
  ServesFailuer({required super.errorMessage});

  factory ServesFailuer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServesFailuer(errorMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServesFailuer(errorMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServesFailuer(errorMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServesFailuer(errorMessage: 'BadCertificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServesFailuer.fromRespnse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServesFailuer(errorMessage: 'ApisServer Was Cansel');

      // TODO: Handle this case.
      case DioExceptionType.connectionError:
        return ServesFailuer(errorMessage: 'Error in Network');

      // TODO: Handle this case.
      case DioExceptionType.unknown:
        return ServesFailuer(
            errorMessage: 'Opps tere was an error,please try latter');

      // TODO: Handle this case.
    }
  }
  factory ServesFailuer.fromRespnse(int stutuseCode, dynamic response) {
    if (stutuseCode == 400 || stutuseCode == 401 || stutuseCode == 403) {
      return ServesFailuer(errorMessage: response['error']['message']);
    } else if (stutuseCode == 404) {
      return ServesFailuer(
          errorMessage: 'Your Request is not found,please try latter');
    } else if (stutuseCode == 500) {
      return ServesFailuer(
          errorMessage: 'Intern Server Error,please try latter');
    } else {
      return ServesFailuer(
          errorMessage: 'Opps tere was an error,please try latter');
    }
  }
}
