import 'package:bloc/bloc.dart';
import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/data/rebos/home_rebo.dart';
import 'package:equatable/equatable.dart';

part 'featuer_books_state.dart';

class FeatuerBooksCubit extends Cubit<FeatuerBooksState> {
  FeatuerBooksCubit(this.homeRebo) : super(FeatuerBooksInitial());
  final HomeRebo homeRebo;
  Future<void> fetchFeatuersBooks() async {
    emit(FeatuerBooksLauding());
    var result = await homeRebo.fetchFeatuersBooks();
    result.fold((failuer) {
      emit(
        FeatuerBooksFailuer(failuer.errorMessage),
      );
    }, (books) {
      emit(FeatuerBooksSuccess(books));
    });
  }
}
