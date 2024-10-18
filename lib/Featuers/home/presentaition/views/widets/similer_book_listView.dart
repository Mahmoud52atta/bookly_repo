import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/presentaition/view_model/book_details/book_details_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_circular_indicator.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_text_error.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_boocks_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillerBoxListView extends StatelessWidget {
  const SimillerBoxListView({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailsCubit, BookDetailsState>(
      builder: (context, state) {
        if (state is BookDetailsSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .13,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: FeatuerBooksItem(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is BookDetailsFailuer) {
          return CustomTextError(textError: state.errorMessage);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
