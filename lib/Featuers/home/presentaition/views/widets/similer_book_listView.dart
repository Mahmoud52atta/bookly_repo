import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_boocks_item.dart';
import 'package:flutter/material.dart';

class SimillerBoxListView extends StatelessWidget {
  const SimillerBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: FeatuerBooksItem(
              imageUrl:
                  'http://books.google.com/books/content?id=b-2oDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
            ),
          );
        },
      ),
    );
  }
}
