import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_uppbar.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_ListView_Item.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeatuerBoocksListView(),
      ],
    );
  }
}

class FeatuerBoocksListView extends StatelessWidget {
  const FeatuerBoocksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 10,
              left: 8,
            ),
            child: const FeatuerListViewItem(),
          );
        },
      ),
    );
  }
}
