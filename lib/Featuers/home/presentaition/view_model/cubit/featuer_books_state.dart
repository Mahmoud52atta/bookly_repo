part of 'featuer_books_cubit.dart';

sealed class FeatuerBooksState extends Equatable {
  const FeatuerBooksState();

  @override
  List<Object> get props => [];
}

final class FeatuerBooksInitial extends FeatuerBooksState {}

final class FeatuerBooksLauding extends FeatuerBooksState {}

final class FeatuerBooksFailuer extends FeatuerBooksState {
  final String errorMessage;

  const FeatuerBooksFailuer(this.errorMessage);
}

final class FeatuerBooksSuccess extends FeatuerBooksState {
  final List<BookModel> books;

  const FeatuerBooksSuccess(this.books);
}
