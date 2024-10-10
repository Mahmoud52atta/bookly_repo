import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/errors/failuers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRebo {
  Future<Either<Failuers, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failuers, List<BookModel>>> fetchFeatuersBooks();
}
