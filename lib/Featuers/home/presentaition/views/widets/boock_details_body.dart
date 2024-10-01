import 'package:bookly_app/Featuers/home/presentaition/views/widets/boock_item.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/book_boton_action.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/book_raiting.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/similer_book_listView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BoockDetailsBody extends StatelessWidget {
  const BoockDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BoockItem(),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Text('The Jungle Book',
                  style: Styles.textStyle30.copyWith(
                      color: Colors.white, decoration: TextDecoration.none)),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  decoration: TextDecoration.none,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const BookRaiting(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
          const SizedBox(
            height: 33,
          ),
          const BooksBottonAction(),
          const Expanded(
            child: SizedBox(
              height: 40,
            ),
          ),
          Text(
            'You can also like',
            style: Styles.textStyle14
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 14,
          ),
          const SimillerBoxListView(),
        ],
      ),
    );
  }
}
