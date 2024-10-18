import 'package:bloc/bloc.dart';
import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/presentaition/view_model/book_details/book_details_cubit.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/boock_details_body.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/boock_details_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoocksDetails extends StatefulWidget {
  const BoocksDetails({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BoocksDetails> createState() => _BoocksDetailsState();
}

class _BoocksDetailsState extends State<BoocksDetails> {
  @override
  void initState() {
    BlocProvider.of<BookDetailsCubit>(context)
        .fetchBookDetails(categpry: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 38,
                ),
                const BoockDetailsAppBar(),
                const SizedBox(
                  height: 30,
                ),
                BoockDetailsBody(
                  bookModel: widget.bookModel,
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
