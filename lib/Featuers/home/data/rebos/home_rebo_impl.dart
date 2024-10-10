import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/rebos/home_rebo.dart';
import 'package:bookly_app/core/utils/errors/failuers.dart';
import 'package:dartz/dartz.dart';

class HomeReboImpl implements HomeRebo {
  @override
  Future<Either<Failuers, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuers, List<BookModel>>> fetchFeatuersBooks() {
    // TODO: implement fetchFeatuersBooks
    throw UnimplementedError();
  }
}
