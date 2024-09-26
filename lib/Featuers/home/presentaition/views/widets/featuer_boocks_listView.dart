import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_ListView_Item.dart';
import 'package:flutter/material.dart';

class FeatuerBoocksListView extends StatelessWidget {
  const FeatuerBoocksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: FeatuerListViewItem(),
          );
        },
      ),
    );
  }
}
