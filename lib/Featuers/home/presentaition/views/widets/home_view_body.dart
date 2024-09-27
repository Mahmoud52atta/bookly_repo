import 'package:bookly_app/Featuers/home/presentaition/views/widets/best_seller%20listView.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_uppbar.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_boocks_listView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeatuerBoocksListView(),
                SizedBox(
                  height: 45,
                ),
                Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
