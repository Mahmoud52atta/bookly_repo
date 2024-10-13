import 'package:bloc/bloc.dart';
import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/rebos/home_rebo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRebo) : super(NewestBooksInitial());
  final HomeRebo homeRebo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRebo.fetchNewestBooks();
    result.fold((failuer) {
      emit(
        NewestBooksFailuer(failuer.errorMessage),
      );
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
