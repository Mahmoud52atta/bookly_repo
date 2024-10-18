import 'package:bookly_app/Featuers/home/presentaition/view_model/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/best_seller_item.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_circular_indicator.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_text_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: BestSellerItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailuer) {
          return CustomTextError(textError: state.errorMessage);
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
