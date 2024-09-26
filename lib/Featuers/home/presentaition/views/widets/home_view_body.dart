import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_uppbar.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_boocks_listView.dart';
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
