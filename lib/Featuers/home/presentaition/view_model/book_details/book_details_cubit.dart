import 'package:bloc/bloc.dart';
import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/rebos/home_rebo.dart';
import 'package:equatable/equatable.dart';

part 'book_details_state.dart';

class BookDetailsCubit extends Cubit<BookDetailsState> {
  BookDetailsCubit(this.homeRebo) : super(BookDetailsInitial());
  final HomeRebo homeRebo;
  Future<void> fetchBookDetails({required String categpry}) async {
    emit(BookDetailsLoading());
    var result = await homeRebo.fetchBookDetails(category: categpry);
    result.fold((failuer) {
      emit(
        BookDetailsFailuer(failuer.errorMessage),
      );
    }, (books) {
      emit(BookDetailsSuccess(books));
    });
  }
}
