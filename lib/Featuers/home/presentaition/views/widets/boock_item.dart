import 'package:bookly_app/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_boocks_item.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BoockItem extends StatelessWidget {
  const BoockItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .15),
      child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: FeatuerBooksItem(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '')),
    );
  }
}
