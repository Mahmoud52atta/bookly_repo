import 'package:bookly_app/Featuers/home/presentaition/view_model/featuered_books/featuer_books_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_circular_indicator.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_text_error.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_boocks_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatuerBoocksListView extends StatelessWidget {
  const FeatuerBoocksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerBooksCubit, FeatuerBooksState>(
      builder: (context, state) {
        if (state is FeatuerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .32,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBoockDetails,
                          extra: state.books[index]);
                    },
                    child: FeatuerBooksItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeatuerBooksFailuer) {
          return CustomTextError(
            textError: state.errorMessage,
          );
        } else {
          return CustomCircularIndicator();
        }
      },
    );
  }
}
