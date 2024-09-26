import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_uppbar.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_boocks_listView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatuerBoocksListView(),
          SizedBox(
            height: 46.9,
          ),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
