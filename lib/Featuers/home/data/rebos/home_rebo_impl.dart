import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/rebos/home_rebo.dart';
import 'package:bookly_app/core/utils/apis_service.dart';
import 'package:bookly_app/core/utils/errors/failuers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReboImpl implements HomeRebo {
  final ApisService apisService;
  HomeReboImpl(this.apisService);
  @override
  Future<Either<Failuers, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apisService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServesFailuer.fromDioError(e));
      }
      return left(
        ServesFailuer(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeatuersBooks() async {
    try {
      var data = await apisService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServesFailuer.fromDioError(e));
      }
      return left(
        ServesFailuer(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchBookDetails(
      {required String category}) async {
    try {
      var data = await apisService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServesFailuer.fromDioError(e));
      }
      return left(
        ServesFailuer(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
